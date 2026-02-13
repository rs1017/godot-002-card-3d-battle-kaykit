import argparse
import json
import os
import time
import urllib.parse
import urllib.request


API_URL = "http://127.0.0.1:8188"


SCENES = [
    ("main_lobby", "stylized fantasy card battle game main menu, clean UI composition, cinematic lighting, 16:9"),
    ("battle_board_day", "top-down stylized 3d card battle arena with two lanes and bridge, bright daytime, readable board state"),
    ("battle_board_night", "stylized fantasy card battle arena at night, glowing mana effects, high readability, top-down"),
    ("victory_screen", "game victory result screen with trophy, confetti, polished game ui panel, fantasy style"),
    ("defeat_screen", "game defeat result screen with cracked emblem, somber lighting, polished game ui panel"),
    ("deck_builder", "card deck builder interface concept, card grid, mana curve chart area, fantasy ui skin"),
]


def http_get(url: str) -> bytes:
    with urllib.request.urlopen(url, timeout=60) as resp:
        return resp.read()


def http_post_json(url: str, payload: dict) -> dict:
    data = json.dumps(payload).encode("utf-8")
    req = urllib.request.Request(url, data=data, headers={"Content-Type": "application/json"})
    with urllib.request.urlopen(req, timeout=120) as resp:
        return json.loads(resp.read().decode("utf-8"))


def check_comfy(api_url: str) -> None:
    _ = json.loads(http_get(f"{api_url}/system_stats").decode("utf-8"))


def build_flux_prompt(pos_text: str, neg_text: str, seed: int, width: int, height: int, prefix: str) -> dict:
    # Node IDs are strings, matching ComfyUI prompt format.
    return {
        "1": {
            "class_type": "UNETLoader",
            "inputs": {"unet_name": "flux1-schnell-fp8.safetensors", "weight_dtype": "default"},
        },
        "2": {
            "class_type": "DualCLIPLoader",
            "inputs": {
                "clip_name1": "clip_l.safetensors",
                "clip_name2": "t5xxl_fp8_e4m3fn.safetensors",
                "type": "flux",
            },
        },
        "3": {
            "class_type": "CLIPTextEncodeFlux",
            "inputs": {
                "clip": ["2", 0],
                "clip_l": pos_text,
                "t5xxl": pos_text,
                "guidance": 3.5,
            },
        },
        "4": {
            "class_type": "CLIPTextEncodeFlux",
            "inputs": {
                "clip": ["2", 0],
                "clip_l": neg_text,
                "t5xxl": neg_text,
                "guidance": 3.5,
            },
        },
        "5": {
            "class_type": "ModelSamplingFlux",
            "inputs": {
                "model": ["1", 0],
                "max_shift": 1.15,
                "base_shift": 0.5,
                "width": width,
                "height": height,
            },
        },
        "6": {
            "class_type": "EmptySD3LatentImage",
            "inputs": {"width": width, "height": height, "batch_size": 1},
        },
        "7": {
            "class_type": "KSampler",
            "inputs": {
                "model": ["5", 0],
                "seed": seed,
                "steps": 20,
                "cfg": 1.0,
                "sampler_name": "euler",
                "scheduler": "simple",
                "positive": ["3", 0],
                "negative": ["4", 0],
                "latent_image": ["6", 0],
                "denoise": 1.0,
            },
        },
        "8": {
            "class_type": "VAELoader",
            "inputs": {"vae_name": "ae.safetensors"},
        },
        "9": {
            "class_type": "VAEDecode",
            "inputs": {"samples": ["7", 0], "vae": ["8", 0]},
        },
        "10": {
            "class_type": "SaveImage",
            "inputs": {"images": ["9", 0], "filename_prefix": prefix},
        },
    }


def poll_history_for_output(api_url: str, prompt_id: str, timeout_sec: int = 600) -> list:
    deadline = time.time() + timeout_sec
    while time.time() < deadline:
        data = json.loads(http_get(f"{api_url}/history/{prompt_id}").decode("utf-8"))
        if prompt_id in data:
            outputs = data[prompt_id].get("outputs", {})
            images = []
            for node_out in outputs.values():
                images.extend(node_out.get("images", []))
            if images:
                return images
        time.sleep(1.5)
    raise TimeoutError(f"Timeout waiting for ComfyUI prompt_id={prompt_id}")


def download_image_from_comfy(api_url: str, image_meta: dict, out_path: str) -> None:
    params = urllib.parse.urlencode(
        {
            "filename": image_meta["filename"],
            "subfolder": image_meta.get("subfolder", ""),
            "type": image_meta.get("type", "output"),
        }
    )
    raw = http_get(f"{api_url}/view?{params}")
    with open(out_path, "wb") as f:
        f.write(raw)


def main() -> None:
    parser = argparse.ArgumentParser(description="Generate planning images via ComfyUI URL API")
    parser.add_argument("--api-url", default=API_URL)
    parser.add_argument("--out-dir", default=os.path.join("docs", "기획서", "images"))
    parser.add_argument("--width", type=int, default=1344)
    parser.add_argument("--height", type=int, default=768)
    args = parser.parse_args()

    os.makedirs(args.out_dir, exist_ok=True)
    check_comfy(args.api_url)

    neg = "text, watermark, logo, blurry, low quality, extra limbs, deformed"
    seed_base = int(time.time())

    saved = []
    for i, (name, prompt_text) in enumerate(SCENES, start=1):
        prefix = f"planning_{name}"
        workflow = build_flux_prompt(prompt_text, neg, seed_base + i, args.width, args.height, prefix)
        queue_resp = http_post_json(f"{args.api_url}/prompt", {"prompt": workflow})
        prompt_id = queue_resp["prompt_id"]
        images = poll_history_for_output(args.api_url, prompt_id)
        if not images:
            continue
        out_path = os.path.join(args.out_dir, f"{name}.png")
        download_image_from_comfy(args.api_url, images[0], out_path)
        saved.append(out_path)
        print(f"SAVED:{out_path}")

    if not saved:
        raise RuntimeError("No images were generated.")

    print("DONE")


if __name__ == "__main__":
    main()

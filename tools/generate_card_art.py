"""
KayKit Card Battle - ComfyUI API URL 기반 카드 아트 생성 스크립트.
기본 ComfyUI 경로는 D:\\comfyUI 이고, 실행/호출은 URL(API)로 처리한다.
"""
import argparse
import json
import os
import sys
import time
import urllib.request

COMFYUI_URL = "http://127.0.0.1:8188"
COMFYUI_ROOT = r"D:\comfyUI"
OUTPUT_DIR = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "assets", "ui", "cards")

# 카드별 프롬프트 정의
CARD_PROMPTS = [
    {
        "filename": "card_knight.png",
        "prompt": "fantasy knight character portrait, silver armor, sword and shield, heroic pose, medieval warrior, dramatic lighting, card game illustration, digital painting, detailed, vibrant colors, dark fantasy background",
        "negative": "text, watermark, logo, blurry, deformed, ugly, bad anatomy, extra limbs",
    },
    {
        "filename": "card_rogue.png",
        "prompt": "fantasy rogue character portrait, hooded thief, dual daggers, stealthy pose, leather armor, dark alley background, card game illustration, digital painting, detailed, vibrant colors, dramatic shadows",
        "negative": "text, watermark, logo, blurry, deformed, ugly, bad anatomy, extra limbs",
    },
    {
        "filename": "card_mage.png",
        "prompt": "fantasy mage character portrait, wizard hat, casting spell, glowing magic orb, robes, mystical energy, card game illustration, digital painting, detailed, vibrant purple and blue colors, arcane background",
        "negative": "text, watermark, logo, blurry, deformed, ugly, bad anatomy, extra limbs",
    },
    {
        "filename": "card_barbarian.png",
        "prompt": "fantasy barbarian character portrait, muscular warrior, massive battle axe, fur armor, fierce expression, war paint, card game illustration, digital painting, detailed, fiery background, epic pose",
        "negative": "text, watermark, logo, blurry, deformed, ugly, bad anatomy, extra limbs",
    },
    {
        "filename": "card_ranger.png",
        "prompt": "fantasy ranger character portrait, hooded archer, bow and arrows, green cloak, forest background, elven features, card game illustration, digital painting, detailed, nature themed, vibrant green",
        "negative": "text, watermark, logo, blurry, deformed, ugly, bad anatomy, extra limbs",
    },
    {
        "filename": "card_skeleton_warrior.png",
        "prompt": "undead skeleton warrior portrait, glowing orange eyes, rusty armor, battle axe and shield, dark dungeon background, card game illustration, digital painting, detailed, dark fantasy, eerie lighting",
        "negative": "text, watermark, logo, blurry, deformed, ugly, bad anatomy, extra limbs",
    },
    {
        "filename": "card_skeleton_mage.png",
        "prompt": "undead skeleton mage portrait, glowing eyes, tattered dark robes, casting necromancy spell, green magical energy, card game illustration, digital painting, detailed, dark fantasy, spooky atmosphere",
        "negative": "text, watermark, logo, blurry, deformed, ugly, bad anatomy, extra limbs",
    },
    {
        "filename": "card_skeleton_minion.png",
        "prompt": "small undead skeleton minion portrait, simple bones, glowing eyes, ragged cloth, weak creature, dark cave background, card game illustration, digital painting, detailed, dark fantasy, dim lighting",
        "negative": "text, watermark, logo, blurry, deformed, ugly, bad anatomy, extra limbs",
    },
    {
        "filename": "card_fireball.png",
        "prompt": "massive fireball spell explosion, swirling fire and flames, magical fire energy, fantasy spell effect, card game illustration, digital painting, detailed, dramatic orange and red, dark background, no characters",
        "negative": "text, watermark, logo, blurry, person, character, face, hands",
    },
    {
        "filename": "card_healing_touch.png",
        "prompt": "healing magic spell effect, golden green light, gentle restoration energy, glowing hands with healing aura, fantasy spell card art, card game illustration, digital painting, detailed, soft warm colors, divine light",
        "negative": "text, watermark, logo, blurry, dark, scary, blood, wound",
    },
]


def check_comfyui(url):
    """ComfyUI API 접근 가능 여부 확인"""
    try:
        req = urllib.request.Request(f"{url}/system_stats")
        resp = urllib.request.urlopen(req, timeout=5)
        _ = json.loads(resp.read())
        print(f"[OK] ComfyUI connected: {url}")
        return True
    except Exception as e:
        print(f"[FAIL] ComfyUI not accessible at {url}: {e}")
        return False


def generate_placeholder(filepath, prompt):
    """워크플로우 미연동 상태에서의 가드: 실제 생성 대신 안내 파일 작성."""
    note_path = filepath + ".txt"
    with open(note_path, "w", encoding="utf-8") as f:
        f.write("ComfyUI generation placeholder\n")
        f.write(f"Target image: {os.path.basename(filepath)}\n")
        f.write(f"Prompt: {prompt}\n")
        f.write("Use ComfyUI URL API /prompt workflow to render this image.\n")
    print(f"  Placeholder note written: {note_path}")


def main():
    parser = argparse.ArgumentParser(description="Generate card art via ComfyUI URL API")
    parser.add_argument("--url", default=COMFYUI_URL, help="ComfyUI API URL")
    parser.add_argument("--comfy-root", default=COMFYUI_ROOT, help="ComfyUI install root path")
    parser.add_argument("--only", type=int, default=-1, help="Generate only card at index (0-9)")
    args = parser.parse_args()

    # ComfyUI 접속 확인
    if not check_comfyui(args.url):
        print("\nComfyUI가 실행 중이 아닙니다. 먼저 ComfyUI를 시작하세요:")
        print(f"  cd {args.comfy_root}")
        print("  run_comfyui.bat")
        print(f"그리고 URL 호출: {args.url}")
        sys.exit(1)

    # 출력 디렉토리 생성
    os.makedirs(OUTPUT_DIR, exist_ok=True)

    # 카드 아트 생성
    cards = CARD_PROMPTS
    if args.only >= 0:
        cards = [CARD_PROMPTS[args.only]]

    total = len(cards)
    for i, card in enumerate(cards):
        filepath = os.path.join(OUTPUT_DIR, card["filename"])

        # 이미 존재하면 스킵
        if os.path.exists(filepath):
            print(f"[{i+1}/{total}] SKIP (exists): {card['filename']}")
            continue

        print(f"[{i+1}/{total}] MISSING: {card['filename']}")
        try:
            # NOTE:
            # 실제 이미지 생성은 프로젝트의 ComfyUI workflow(/prompt) JSON과 노드 매핑이 필요하다.
            # 현재는 URL 기반 호출 규칙을 강제하고, 누락 카드에 대해 placeholder만 기록한다.
            generate_placeholder(filepath, card["prompt"])
        except Exception as e:
            print(f"  ERROR: {e}")
            continue

        # GPU 쿨다운
        time.sleep(1)

    print(f"\nDone! Checked card art in: {OUTPUT_DIR}")


if __name__ == "__main__":
    main()

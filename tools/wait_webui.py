"""ComfyUI API가 준비될 때까지 대기 (URL polling)."""
import time
import urllib.request
import json
import sys

URL = sys.argv[1] if len(sys.argv) > 1 else "http://127.0.0.1:8188"

for i in range(30):
    time.sleep(10)
    try:
        req = urllib.request.Request(f"{URL}/system_stats")
        resp = urllib.request.urlopen(req, timeout=5)
        _ = json.loads(resp.read())
        print(f"READY - ComfyUI URL: {URL}", flush=True)
        sys.exit(0)
    except Exception:
        print(f"Waiting... {(i+1)*10}s", flush=True)

print("TIMEOUT")
sys.exit(1)

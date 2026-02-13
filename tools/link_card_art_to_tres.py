"""
카드 아트 이미지를 .tres 리소스 파일에 연결
assets/ui/cards/card_xxx.png -> resources/cards/card_xxx.tres
"""
import os
import re

PROJECT_ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
CARDS_DIR = os.path.join(PROJECT_ROOT, "resources", "cards")
ART_DIR = os.path.join(PROJECT_ROOT, "assets", "ui", "cards")

CARD_MAP = {
    "card_knight.tres": "card_knight.png",
    "card_rogue.tres": "card_rogue.png",
    "card_mage.tres": "card_mage.png",
    "card_barbarian.tres": "card_barbarian.png",
    "card_ranger.tres": "card_ranger.png",
    "card_skeleton_warrior.tres": "card_skeleton_warrior.png",
    "card_skeleton_mage.tres": "card_skeleton_mage.png",
    "card_skeleton_minion.tres": "card_skeleton_minion.png",
    "card_fireball.tres": "card_fireball.png",
    "card_healing_touch.tres": "card_healing_touch.png",
}


def update_tres(tres_path, art_res_path):
    """
    .tres 파일에 card_art 텍스처 ext_resource 추가
    """
    with open(tres_path, "r", encoding="utf-8") as f:
        content = f.read()

    # 이미 card_art가 설정되어 있으면 스킵
    if "card_art" in content:
        print(f"  SKIP (already has card_art): {os.path.basename(tres_path)}")
        return

    # load_steps 증가
    m = re.search(r'load_steps=(\d+)', content)
    if m:
        old_steps = int(m.group(1))
        new_steps = old_steps + 1
        content = content.replace(f'load_steps={old_steps}', f'load_steps={new_steps}')

    # 새 ext_resource ID 찾기
    existing_ids = re.findall(r'id="(\d+)"', content)
    new_id = str(max(int(x) for x in existing_ids) + 1) if existing_ids else "2"

    # ext_resource 추가 (기존 ext_resource 뒤에)
    ext_line = f'\n[ext_resource type="Texture2D" path="{art_res_path}" id="{new_id}"]'
    # 마지막 ext_resource 뒤에 삽입
    last_ext_pos = content.rfind("[ext_resource")
    if last_ext_pos >= 0:
        next_newline = content.find("\n", last_ext_pos)
        content = content[:next_newline] + ext_line + content[next_newline:]

    # card_art 속성 추가 ([resource] 섹션 끝에)
    content = content.rstrip()
    content += f'\ncard_art = ExtResource("{new_id}")\n'

    with open(tres_path, "w", encoding="utf-8") as f:
        f.write(content)

    print(f"  LINKED: {os.path.basename(tres_path)} -> {art_res_path}")


def main():
    linked = 0
    for tres_name, art_name in CARD_MAP.items():
        tres_path = os.path.join(CARDS_DIR, tres_name)
        art_path = os.path.join(ART_DIR, art_name)

        if not os.path.exists(tres_path):
            print(f"  MISS (tres): {tres_name}")
            continue
        if not os.path.exists(art_path):
            print(f"  MISS (art):  {art_name}")
            continue

        art_res_path = f"res://assets/ui/cards/{art_name}"
        update_tres(tres_path, art_res_path)
        linked += 1

    print(f"\nLinked {linked}/{len(CARD_MAP)} card arts to .tres resources")


if __name__ == "__main__":
    main()

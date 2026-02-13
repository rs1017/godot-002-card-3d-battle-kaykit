# KayKit 3D Card Battle - Game Design Spec

## Overview
하스스톤 스타일 턴제 카드 배틀 게임. KayKit 3D 에셋을 활용한 미니언 소환/공격 시스템.

**레퍼런스**: 하스스톤 / 매직더개더링 아레나 / 정직한 카드 난투

## Core Systems

### Turn Structure
1. 턴 시작 -> 마나 크리스탈 +1 (최대 10) -> 마나 전체 충전
2. 카드 1장 드로우
3. 플레이어 행동 (카드 사용 / 미니언 공격 / 턴 종료)
4. 턴 종료 -> 상대방 턴

### Win Condition
- 상대 영웅 HP 30 -> 0 이면 승리

### Card Types
- **미니언(Minion)**: ATK/HP/COST, 필드에 소환하여 공격
- **주문(Spell)**: 즉발 효과, 대상 지정

### Keywords
- **도발(Taunt)**: 도발 미니언이 있으면 반드시 도발 미니언을 먼저 공격해야 함
- **돌진(Rush)**: 소환된 턴에 즉시 적 미니언을 공격 가능 (영웅은 불가)
- **전투 함성(Battlecry)**: 소환 시 즉시 발동하는 효과

### Board Rules
- 각 플레이어 필드 최대 7 미니언
- 손패 최대 10장
- 덱 소진 시 피로 데미지 (1, 2, 3... 누적)

## Card List (Prototype - 10 Cards)

| # | Card Name | Type | Cost | ATK | HP | KayKit Model | Effect |
|---|-----------|------|------|-----|-----|-------------|--------|
| 1 | Knight | Minion | 4 | 4 | 5 | adventurers/Knight.glb | Taunt |
| 2 | Rogue | Minion | 3 | 4 | 2 | adventurers/Rogue.glb | Rush |
| 3 | Mage | Minion | 5 | 3 | 4 | adventurers/Mage.glb | Battlecry: Deal 2 damage |
| 4 | Barbarian | Minion | 6 | 7 | 4 | adventurers/Barbarian.glb | None |
| 5 | Ranger | Minion | 2 | 2 | 3 | adventurers/Rogue_Hooded.glb | None |
| 6 | Skeleton Warrior | Minion | 3 | 3 | 3 | skeletons/Skeleton_Warrior.glb | None |
| 7 | Skeleton Mage | Minion | 4 | 2 | 5 | skeletons/Skeleton_Mage.glb | Battlecry: Draw 1 |
| 8 | Skeleton Minion | Minion | 1 | 1 | 1 | skeletons/Skeleton_Minion.glb | None |
| 9 | Fireball | Spell | 4 | - | - | - | Deal 6 damage |
| 10 | Healing Touch | Spell | 3 | - | - | - | Restore 5 HP |

## Battle Board Layout
```
[Enemy Hero HP] [Enemy Mana]
[Enemy Hand - card backs]
[Enemy Board - 7 slots]
--- Center Line ---
[Player Board - 7 slots]
[Player Hand - visible cards]
[Player Hero HP] [Player Mana] [End Turn Button]
```

## AI (Prototype)
- 마나가 충분한 카드 중 랜덤 소환
- 공격 가능한 미니언으로 랜덤 대상 공격
- 주문 카드도 랜덤 대상에 사용

## Prototype Scope
- 1v1 PvE (플레이어 vs AI)
- 카드 10장 공용 덱
- 기본 턴 시스템
- KayKit 3D 미니언 소환 연출
- 간단한 AI

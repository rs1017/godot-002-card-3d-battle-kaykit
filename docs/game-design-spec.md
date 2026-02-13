# Top-Down Action Adventure Game Design Specification

> **Reference**: [top-down-action-adventure-starter-kit](https://github.com/Nodragem/top-down-action-adventure-starter-kit)
>
> **Engine**: Godot 4.5.1 | **Assets**: KayKit Only | **Language**: GDScript

---

## 1. Game Overview

### 1.1 Genre Definition

**Top-Down Action Adventure** - 탑다운 시점의 실시간 액션 어드벤처 게임

| 항목 | 설명 |
|------|------|
| **시점** | Top-Down 3D (45도 각도 카메라) |
| **전투** | 실시간 액션 (턴제 아님) |
| **탐험** | GridMap 기반 던전/필드 탐험 |
| **상호작용** | 스위치, 문, 상자, NPC 대화 |

### 1.2 Core Pillars

1. **Fluid Combat** - 부드러운 실시간 전투 (공격, 회피, 방어)
2. **Exploration** - 던전과 필드 탐험, 퍼즐 해결
3. **Character Progression** - 장비, 스킬, 능력치 성장
4. **Environmental Interaction** - 환경 오브젝트와의 상호작용

---

## 2. Technical Architecture

### 2.1 Required Addons

| Addon | 용도 | 설치 방법 |
|-------|------|----------|
| **Beehave** | AI 행동 트리 | Godot Asset Library |
| **Dialogic 2** | 대화/컷신 시스템 | GitHub 수동 설치 |

### 2.2 Project Structure

```
kaykit-action-adventure/
├── assets/
│   ├── kaykit/           # KayKit 원본 에셋
│   │   ├── characters/   # Adventurers, Skeletons
│   │   ├── dungeon/      # Dungeon Remastered
│   │   └── props/        # 소품, 아이템
│   └── audio/            # 효과음, BGM
├── scenes/
│   ├── characters/       # 캐릭터 씬
│   │   ├── player/       # 플레이어 캐릭터
│   │   └── enemies/      # 적 캐릭터
│   ├── levels/           # GridMap 레벨
│   │   ├── dungeons/     # 던전 맵
│   │   └── overworld/    # 필드 맵
│   ├── objects/          # 환경 오브젝트
│   │   ├── interactables/  # 상호작용 오브젝트
│   │   └── destructibles/  # 파괴 가능 오브젝트
│   └── ui/               # UI 씬
├── scripts/
│   ├── autoload/         # 싱글톤
│   ├── characters/       # 캐릭터 스크립트
│   │   ├── player/       # 플레이어 전용
│   │   └── enemies/      # 적 AI
│   ├── components/       # 재사용 컴포넌트
│   ├── state_machine/    # 상태머신 시스템
│   ├── ai/               # Beehave 행동 트리
│   └── systems/          # 게임 시스템
└── resources/            # .tres 리소스
    ├── stats/            # 캐릭터 능력치
    └── items/            # 아이템 데이터
```

### 2.3 Layer Configuration

```
3D Physics Layers:
├── Layer 1: Environment  (벽, 바닥, 장애물)
├── Layer 2: Player       (플레이어)
├── Layer 3: Enemy        (적 캐릭터)
├── Layer 4: Interactable (상호작용 오브젝트)
├── Layer 5: Projectile   (투사체)
├── Layer 6: Pickup       (아이템 드롭)
└── Layer 7: Trigger      (트리거 영역)
```

---

## 3. Core Systems

### 3.1 Character Controller (State Machine)

```
Player (CharacterBody3D)
├── KayKitModel (Node3D)
│   ├── Armature/Skeleton3D
│   └── AnimationPlayer
├── CollisionShape3D
├── HurtBox (Area3D)        # 피격 영역
├── HitBox (Area3D)         # 공격 영역
├── InteractionArea (Area3D) # 상호작용 감지
├── Components/
│   ├── HealthComponent
│   ├── StatsComponent
│   └── InventoryComponent
└── StateMachine (Node)
    ├── IdleState
    ├── MoveState
    ├── AttackState
    ├── DodgeState
    ├── HitState
    └── DeathState
```

**State Machine Pattern:**

```gdscript
# state_machine/state.gd
class_name State extends Node

signal transition_requested(new_state_name: String)

var character: CharacterBody3D

func enter() -> void:
    pass

func exit() -> void:
    pass

func physics_update(delta: float) -> void:
    pass

func handle_input(event: InputEvent) -> void:
    pass
```

### 3.2 Enemy AI (Beehave)

```
Enemy (CharacterBody3D)
├── KayKitModel
├── BeehaveTree (행동 트리)
│   └── Selector
│       ├── Sequence [Combat]
│       │   ├── IsPlayerInRange?
│       │   ├── FacePlayer
│       │   └── Attack
│       ├── Sequence [Chase]
│       │   ├── IsPlayerVisible?
│       │   ├── NavigateToPlayer
│       │   └── UpdatePath
│       └── Patrol
├── NavigationAgent3D
└── DetectionArea (Area3D)
```

### 3.3 Combat System

| 요소 | 설명 |
|------|------|
| **Light Attack** | 빠른 기본 공격, 콤보 가능 |
| **Heavy Attack** | 느리지만 강한 공격 |
| **Dodge/Roll** | 무적 프레임이 있는 회피 |
| **Block** | 방어 (선택적) |
| **Projectile** | 원거리 공격 |

**Damage Flow:**
```
Attacker.HitBox → Target.HurtBox → HealthComponent.take_damage()
                                 → HitState 전환
                                 → Knockback 적용
```

### 3.4 Interaction System

```gdscript
# 상호작용 가능 오브젝트 인터페이스
class_name Interactable extends Node3D

signal interacted(player: Node)

@export var interaction_prompt: String = "Press E"
@export var one_shot: bool = false

func interact(player: Node) -> void:
    interacted.emit(player)
    if one_shot:
        queue_free()
```

**Interactable Types:**
- **Switch** - 문 열기, 함정 활성화
- **Chest** - 아이템 획득
- **NPC** - Dialogic 대화 시작
- **Sign** - 텍스트 표시
- **Portal** - 씬 전환

### 3.5 Level Design (GridMap)

```
Level (Node3D)
├── GridMap (던전/맵 구조)
├── NavigationRegion3D (네비메시)
├── Entities (Node3D)
│   ├── EnemySpawners
│   └── NPCs
├── Interactables (Node3D)
│   ├── Doors
│   ├── Switches
│   └── Chests
├── Collectibles (Node3D)
└── Triggers (Node3D)
    ├── CutsceneTriggers
    └── SpawnTriggers
```

---

## 4. Input Mapping

### 4.1 Keyboard + Mouse

| Action | Key | Description |
|--------|-----|-------------|
| move_up | W | 위로 이동 |
| move_down | S | 아래로 이동 |
| move_left | A | 왼쪽 이동 |
| move_right | D | 오른쪽 이동 |
| attack | Left Click | 공격 |
| heavy_attack | Right Click | 강공격 |
| dodge | Space | 회피/구르기 |
| interact | E | 상호작용 |
| pause | Escape | 일시정지 |

### 4.2 Gamepad

| Action | Button | Description |
|--------|--------|-------------|
| move | Left Stick | 이동 |
| aim | Right Stick | 조준 (선택적) |
| attack | X / Square | 공격 |
| heavy_attack | Y / Triangle | 강공격 |
| dodge | A / Cross | 회피 |
| interact | B / Circle | 상호작용 |

---

## 5. KayKit Asset Mapping

### 5.1 Player Characters

| Character | KayKit Model | Role |
|-----------|-------------|------|
| Knight | `adventurers/Knight.glb` | 근접 탱커 |
| Rogue | `adventurers/Rogue.glb` | 빠른 근접 |
| Mage | `adventurers/Mage.glb` | 원거리 마법 |
| Barbarian | `adventurers/Barbarian.glb` | 파워 딜러 |
| Ranger | `adventurers/Ranger.glb` | 원거리 궁수 |

### 5.2 Enemy Characters

| Enemy | KayKit Model | Behavior |
|-------|-------------|----------|
| Skeleton Warrior | `skeletons/Skeleton_Warrior.glb` | 근접 추적 |
| Skeleton Mage | `skeletons/Skeleton_Mage.glb` | 원거리 공격 |
| Skeleton Rogue | `skeletons/Skeleton_Rogue.glb` | 빠른 돌진 |
| Skeleton Minion | `skeletons/Skeleton_Minion.glb` | 다수 출현 |

### 5.3 Environment

| Type | KayKit Pack | Usage |
|------|-------------|-------|
| Dungeon | Dungeon Remastered | 메인 던전 레벨 |
| Props | Furniture Bits | 실내 장식 |
| Destructibles | Dungeon (배럴, 상자) | 파괴 가능 오브젝트 |

### 5.4 Animation Mapping

```gdscript
const ANIMS = {
    # Idle/Movement
    "idle": "Idle",
    "walk": "Walking_A",
    "run": "Running_A",

    # Combat
    "attack_1": "1H_Melee_Attack_Slice_Horizontal",
    "attack_2": "1H_Melee_Attack_Slice_Diagonal",
    "attack_3": "1H_Melee_Attack_Chop",
    "dodge": "Dodge_Right",
    "block": "Block",

    # Reactions
    "hit": "Hit_A",
    "death": "Death_A",

    # Ranged
    "shoot_bow": "2H_Ranged_Shoot",
    "cast_spell": "Casting_Spell",
}
```

---

## 6. Game States

```gdscript
enum GameState {
    MAIN_MENU,      # 메인 메뉴
    GAMEPLAY,       # 실시간 플레이
    DIALOGUE,       # 대화 중 (움직임 제한)
    CUTSCENE,       # 컷신 재생 중
    INVENTORY,      # 인벤토리 열림
    PAUSED,         # 일시정지
    GAME_OVER,      # 게임 오버
}
```

---

## 7. Implementation Priority

### Phase 1: Core Foundation
1. 프로젝트 구조 세팅
2. Input 매핑 설정
3. Player State Machine 구현
4. 기본 이동 + 카메라

### Phase 2: Combat
1. HitBox/HurtBox 시스템
2. HealthComponent
3. 기본 공격 콤보
4. Dodge 무적 프레임

### Phase 3: Enemy AI
1. Beehave 애드온 설치
2. 기본 Enemy State Machine
3. 감지 + 추적 행동
4. 근접/원거리 공격 패턴

### Phase 4: Level & Interaction
1. GridMap 레벨 제작 도구
2. NavigationRegion3D 설정
3. 상호작용 시스템
4. 스위치/문 메커니즘

### Phase 5: Polish
1. Dialogic 대화 시스템
2. UI/UX
3. 파티클 이펙트
4. 사운드

---

## 8. Reference Implementation

**Primary Reference**: [top-down-action-adventure-starter-kit](https://github.com/Nodragem/top-down-action-adventure-starter-kit)

핵심 참조 포인트:
- State Machine 패턴 (GDQuest 스타일)
- Beehave 행동 트리 구조
- GridMap + NavigationRegion 통합
- HitBox/HurtBox 전투 시스템
- Dialogic 2 통합 방식

---

**Document Version**: 1.0
**Created**: 2026-02-02

# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Communication Language

**Always respond in the same language as the user's question.** Korean input gets Korean responses; English input gets English responses.

## Project Overview

**kaykit-action-adventure** — Godot Engine 4.x 기반 **Top-Down Action Adventure** 프로젝트. KayKit 에셋을 활용한 3D 게임.

> **Reference**: [top-down-action-adventure-starter-kit](https://github.com/Nodragem/top-down-action-adventure-starter-kit)

**핵심 기술:**
- **Godot Engine 4.5.1** — 게임 엔진
- **GDScript** — 주 스크립팅 언어
- **KayKit Assets** — 3D 캐릭터, 환경, 아이템 모델링 에셋
- **Beehave** — AI 행동 트리 (Godot Asset Library)
- **Dialogic 2** — 대화/컷신 시스템
- **ComfyUI** — 2D 그래픽 생성 (UI, 아이콘, 배경, 이펙트, 일러스트)

**장르 특성:**
| 항목 | 설명 |
|------|------|
| 시점 | Top-Down 3D (45도 각도 카메라) |
| 전투 | **실시간 액션** (턴제 아님) |
| 탐험 | GridMap 기반 던전/필드 탐험 |
| AI | Beehave 행동 트리 기반 적 AI |

## KayKit Assets (필수 규칙)

> **[CRITICAL] 모든 에이전트는 이 규칙을 준수해야 합니다.**
> - **3D 모델링**은 **KayKit 에셋만** 사용합니다. 자체 모델링이나 다른 에셋 팩을 사용하지 않습니다.
> - AI로 새 3D 모델을 만들지 않습니다 (Tripo3D 등 사용 금지).
> - 캐릭터, 환경, 아이템 등 모든 3D 에셋은 KayKit에서 선택합니다.

프로젝트의 모든 3D 모델링은 [KayKit](https://kaylousberg.com/game-assets) 에셋을 활용한다.

**KayKit 에셋 종류:**
- **캐릭터**: 영웅, 몬스터, NPC, 동물
- **환경**: 던전, 마을, 자연, 건물
- **아이템**: 무기, 방어구, 소비 아이템
- **가구/소품**: 인테리어, 장식물

**에셋 관리:**
- 원본 에셋: `assets/kaykit/`
- 게임용 가공 에셋: `assets/characters/`, `assets/environments/`, `assets/items/`

**에이전트별 KayKit 활용:**
| 에이전트 | KayKit 활용 방식 |
|----------|-----------------|
| Spec-Analyst | 기획 시 KayKit 에셋 목록 참조, 사용 가능한 모델 기반 기획 |
| Core-Developer | KayKit 모델 임포트/씬 구성, AnimationPlayer 설정 |
| Code-Reviewer | KayKit 에셋 경로/참조 검증 |
| QA-Tester | KayKit 모델 렌더링/애니메이션 동작 확인 |

## ComfyUI 그래픽 생성 (필수 규칙)

> **[CRITICAL] 모든 2D 그래픽 리소스는 ComfyUI로 생성합니다.**
> - UI 이미지, 아이콘, 배경, 이펙트 텍스처, 일러스트 등 **모든 2D 그래픽 작업은 ComfyUI**를 사용합니다.
> - 외부 이미지 소스나 수동 제작 대신 ComfyUI API를 통해 생성합니다.
> - 3D 모델은 KayKit 전용, 2D 그래픽은 ComfyUI 전용입니다.

**ComfyUI 서버:** `http://127.0.0.1:8188`

**생성 도구:**
```bash
python .claude/skills/comfyui-gen/scripts/comfyui_gen.py \
  --prompt "프롬프트" \
  --output "assets/generated/"
```

**ComfyUI 생성 대상:**
| 카테고리 | 저장 경로 | 용도 |
|----------|----------|------|
| UI 이미지 | `assets/ui/` | 버튼, 패널, 프레임 |
| 캐릭터 아이콘 | `assets/icons/characters/` | 캐릭터 초상화/아이콘 |
| 장비 아이콘 | `assets/icons/equipment/` | 무기/방어구 아이콘 |
| 스킬 아이콘 | `assets/icons/skills/` | 스킬 이펙트 아이콘 |
| 배경 | `assets/backgrounds/` | 메뉴/로비 배경 |
| 이펙트 텍스처 | `assets/effects/` | 파티클/이펙트용 텍스처 |
| 일러스트 | `assets/illustrations/` | 로딩 화면, 컷신 등 |

**에이전트별 ComfyUI 활용:**
| 에이전트 | ComfyUI 활용 방식 |
|----------|-------------------|
| Spec-Analyst | 필요한 2D 그래픽 리소스 목록 작성, ComfyUI 프롬프트 방향 제시 |
| Designer | ComfyUI API로 이미지 생성, 프롬프트 설계, 리소스 관리 |
| Core-Developer | ComfyUI 생성 이미지를 Godot 리소스로 통합 |
| Code-Reviewer | ComfyUI 생성 에셋 경로/네이밍 규칙 검증 |
| QA-Tester | ComfyUI 생성 이미지 품질/렌더링 확인 |

**네이밍 규칙:** 영문 소문자 + snake_case (예: `icon_fireball.png`, `bg_forest_01.png`)

## Build & Run

```powershell
# Godot 엔진 경로
$GODOT = "..\Godot_v4.5.1-stable_mono_win64\Godot_v4.5.1-stable_mono_win64.exe"
$GODOT_CONSOLE = "..\Godot_v4.5.1-stable_mono_win64\Godot_v4.5.1-stable_mono_win64_console.exe"

# 에디터 열기
& $GODOT --editor --path "."

# 게임 실행
& $GODOT_CONSOLE --path "."

# Headless 에러 체크 (CI/자동화용)
& $GODOT_CONSOLE --headless --path "." --quit

# Export (export_presets.cfg 설정 후)
& $GODOT --headless --export-release "Windows Desktop" build/game.exe
```

## Key Skills

### Godot 개발

| 명령어 | 설명 |
|--------|------|
| `/godot-engine` | .tscn/.tres 파일 검증, 아키텍처 패턴 참조 |
| `/godot-gdscript-patterns` | 상태머신, 이벤트버스, 컴포넌트 패턴 등 |
| `/godot-testing` | GdUnit4 단위테스트, E2E 자동화 |

### 그래픽 생성

| 명령어 | 설명 |
|--------|------|
| `/comfyui-gen` | ComfyUI로 이미지 생성 (UI, 아이콘, 배경, 이펙트 등) |
| `/prompt-rules` | 게임 아트 프롬프트 룰/템플릿 참조 |

### 워크플로우

| 명령어 | 설명 |
|--------|------|
| `/wf-dev-pipeline` | 개발 워크플로우 (기획서 분석 → 코드 구현 → 리뷰 → QA) |

## Agent Workflow

`/wf-dev-pipeline`으로 다단계 파이프라인 실행:

1. **Spec-Analyst** — 기획서 분석, ToDo List 작성
2. **Core-Developer** — 코드 구현
3. **Code-Reviewer** — 코드 리뷰
4. **Integrity-Checker** — 요구사항 검증
5. **QA-Tester** — 최종 QA

## Repository Structure

```
kaykit-turn-rpg/
├── .claude/              # Claude Code 인프라
│   ├── agents/           # 에이전트 역할 정의
│   ├── skills/           # 재사용 가능한 스킬
│   │   ├── godot-engine/ # Godot 개발 도구
│   │   └── godot-gdscript-patterns/ # GDScript 패턴
│   ├── workflows/        # 워크플로우 JSON 정의
│   └── commands/         # 슬래시 커맨드
├── assets/               # 게임 에셋
│   ├── kaykit/           # KayKit 원본 에셋
│   ├── characters/       # 캐릭터 모델 (GLB/GLTF)
│   ├── environments/     # 환경/맵 에셋
│   ├── items/            # 아이템/장비 모델
│   ├── effects/          # 이펙트
│   └── ui/               # UI 요소
├── scenes/               # Godot 씬 파일
│   ├── characters/       # 캐릭터 씬
│   ├── battle/           # 전투 씬
│   ├── ui/               # UI 씬
│   └── levels/           # 레벨/맵 씬
├── scripts/              # GDScript 파일
│   ├── autoload/         # 글로벌 싱글톤
│   ├── characters/       # 캐릭터 스크립트
│   ├── battle/           # 전투 시스템
│   └── ui/               # UI 스크립트
└── todos/                # 컨텐츠별 작업 추적
```

## Godot 개발 가이드라인

### 파일 포맷 주의사항

**.tres/.tscn 파일에서 금지:**
- `preload()` — 대신 `ExtResource("id")` 사용
- `var`, `const`, `func` 키워드 — 속성값만 직접 대입
- 타입 없는 배열 `[1, 2, 3]` — 대신 `Array[int]([1, 2, 3])` 사용

### 아키텍처 패턴

**Player 구조 (State Machine 기반):**
```
Player (CharacterBody3D)
├─ KayKitModel (Node3D)      # KayKit 3D 모델
│   ├─ Armature/Skeleton3D
│   └─ AnimationPlayer
├─ CollisionShape3D
├─ HurtBox (Area3D)          # 피격 영역
├─ HitBox (Area3D)           # 공격 영역
├─ InteractionArea (Area3D)  # 상호작용 감지
├─ Components/
│   ├─ HealthComponent
│   ├─ StatsComponent
│   └─ InventoryComponent
└─ StateMachine (Node)
    ├─ IdleState
    ├─ MoveState
    ├─ AttackState
    ├─ DodgeState
    ├─ HitState
    └─ DeathState
```

**Enemy 구조 (Beehave AI):**
```
Enemy (CharacterBody3D)
├─ KayKitModel (Node3D)
├─ BeehaveTree              # 행동 트리
│   └─ Selector
│       ├─ Sequence [Combat]
│       ├─ Sequence [Chase]
│       └─ Patrol
├─ NavigationAgent3D
├─ DetectionArea (Area3D)
├─ HurtBox (Area3D)
└─ HitBox (Area3D)
```

**Level 구조 (GridMap):**
```
Level (Node3D)
├─ GridMap                   # 던전/맵 구조
├─ NavigationRegion3D        # 네비메시
├─ Entities/                 # 캐릭터
├─ Interactables/            # 상호작용 오브젝트
└─ Triggers/                 # 이벤트 트리거
```

**시그널 기반 통신 (느슨한 결합):**
```gdscript
signal item_picked_up(item)
item_picked_up.emit(item)
```

### Known Issues

- Godot 4.5.1: `Variant type inference` 경고가 에러로 처리됨
  - `var x := dict.get(...)` 대신 `var x: String = dict.get(...)` 사용

## 3D 캐릭터 워크플로우

KayKit 에셋 기반 캐릭터 설정 흐름:

```
[KayKit 모델 선택] → [Godot 임포트] → [AnimationPlayer 설정]
        ↓
[씬 구성] ← [머티리얼/셰이더 적용] ← [애니메이션 연결]
```

**KayKit 모델 임포트:**
1. GLB/GLTF 파일을 `assets/` 폴더에 배치
2. Godot에서 자동 임포트
3. 씬으로 인스턴스화 후 AnimationPlayer 설정

**애니메이션 타입:**
- `idle` — 대기
- `walk` — 이동
- `attack` — 공격
- `hit` — 피격
- `die` — 사망

## 에이전트 필수 참조 문서

모든 에이전트는 작업 전 다음 문서를 반드시 참조해야 합니다:

| 문서 | 경로 | 설명 |
|------|------|------|
| **게임 설계 스펙** ⭐ | `docs/game-design-spec.md` | Top-Down Action Adventure 상세 설계 |
| **KayKit 에셋 레퍼런스** ⭐ | `.claude/references/kaykit-assets.md` | KayKit 에셋 목록, Godot 통합 가이드, 애니메이션 |
| **프로젝트 규칙** | `CLAUDE.md` | 프로젝트 개요, 아키텍처 패턴, 코딩 규칙 |

## 에이전트별 방향성 가이드

> **[CRITICAL] 이 프로젝트는 Top-Down Action Adventure 장르입니다. 턴제가 아닌 실시간 액션 전투를 구현합니다.**

### Spec-Analyst
- `docs/game-design-spec.md` 참조하여 기획 작성
- 실시간 전투, State Machine, Beehave AI 기반 설계
- KayKit 에셋 범위 내에서 기획
- 필요한 2D 그래픽 리소스 목록 작성 (ComfyUI 생성 대상)

### Designer
- **ComfyUI API**로 모든 2D 그래픽 생성 (`/comfyui-gen`)
- 프롬프트 설계, 리소스 관리, UI 레이아웃 설계
- `/prompt-rules` 참조하여 프롬프트 작성

### Core-Developer
- **State Machine 패턴** 필수 (GDQuest 스타일)
- **HitBox/HurtBox 시스템**으로 전투 구현
- **Beehave** 애드온으로 적 AI 구현
- **GridMap + NavigationRegion3D**로 레벨 구성
- ComfyUI 생성 이미지를 Godot 리소스로 통합

### Code-Reviewer
- State Machine 패턴 준수 여부 확인
- HitBox/HurtBox 레이어 설정 검증
- 실시간 전투 로직 검토 (턴제 코드 제거 필요)
- ComfyUI 생성 에셋 경로/네이밍 규칙 검증

### QA-Tester
- 실시간 전투 플로우 테스트
- 회피(Dodge) 무적 프레임 검증
- 적 AI 추적/공격 동작 확인
- 상호작용 시스템 테스트
- ComfyUI 생성 이미지 품질/렌더링 확인

## Settings

- **Language:** Korean (`settings.json` → `"language": "ko"`)
- **Denied reads:** `node_modules/`, `bin/`, `obj/`, `.env`, `*.pem`, `*.key`, `.git/`, `.vs/`

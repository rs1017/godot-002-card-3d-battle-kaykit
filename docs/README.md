# docs Folder Guide

## Purpose
`docs/`는 기획 문서, Ralph 파이프라인 산출물, 검증 기록을 모아두는 문서 루트입니다.

## Folders
- `docs/planning`
  - 메인 기획 문서와 확장 기획 문서를 보관합니다.
  - 핵심 파일: `docs/planning/game_design_master_plan.md`
  - 확장 기획: `docs/planning/expansion/main_plan.md`

- `docs/ralph`
  - Ralph 자동 사이클 산출물 루트입니다.
  - 세부 결과는 `plans/`, `runs/`, `cycles/`, `reviews/`, `reference/`, `distribution/`, `research/`로 분리합니다.

## Core Documents
- `docs/game-design-spec.md`: 게임 설계 기본 스펙
- `docs/card-battle-spec.md`: 카드 배틀 규칙/범위
- `docs/card-selection-rules.md`: 카드 선택/상호작용 규칙
- `docs/card-battle-phase5-qa-checklist.md`: QA 체크리스트

## Planning Data Policy
- 기획 문서는 Markdown (`.md`) 사용
- 기획 이미지 파일은 인접 `images/` 폴더에 저장하고 상대경로 링크 사용
- 기획 데이터 표는 `.csv` 사용
- 외부 URL 이미지는 문서에 직접 링크하지 않고 로컬 저장 후 링크

## ComfyUI Runtime Policy
- ComfyUI root: `D:\comfyUI`
- API URL: `http://127.0.0.1:8188`
- 생성은 API 호출 기반으로 수행

## Local Subfolder Guide
- `planning`: 장기/확장 기획 문서와 이미지 묶음
- `ralph`: 자동 파이프라인 실행 로그 및 검증 산출물

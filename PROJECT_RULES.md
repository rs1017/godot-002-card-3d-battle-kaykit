# 프로젝트 관리 룰 (Project Management Rules)

## 1) 목적
- 이 문서는 폴더/파일이 다시 분산되지 않도록 구조, 네이밍, 산출물 관리 기준을 고정한다.
- 신규 작업은 이 문서의 규칙을 우선 적용한다.

## 2) 표준 폴더 구조
- `assets/`: 외부 에셋 원본(가급적 원본 구조 유지)
- `scenes/`: 실행 씬
  - `scenes/battle`, `scenes/characters`, `scenes/levels`, `scenes/ui` 사용
  - `scenes/level1` 같은 단독 레거시 폴더는 금지
- `scripts/`: 게임 로직 스크립트
- `resources/`: 게임 데이터 리소스(`.tres`)
- `docs/`: 문서
  - `docs/planning`: 기획 본문
  - `docs/ralph/plans`: 사이클 계획 문서
  - `docs/ralph/runs`: 실행 리포트
  - `docs/ralph/cycles`: 루프/검증 요약
  - `docs/ralph/reviews`: 리뷰 결과
  - `docs/ralph/reference`: 레퍼런스 자료
  - `docs/ralph/planning`: CSV/마스터 설계
  - `docs/ralph/distribution`: 배포용 최신 문서
  - `docs/ralph/research`: 조사/감사 문서

## 3) 금지/정리 규칙
- `docs/ralph` 루트에 `plan-*.md` 직접 생성 금지 (`docs/ralph/plans/` 사용).
- `docs/plans` 같은 중복 축 폴더 생성 금지 (`docs/planning/`으로 통합).
- 임시 폴더/파일(`tmp`, `.tmp_appdata`, `tools/__pycache__`)은 커밋 금지.
- `.godot_user`는 로컬 런타임 전용이며 버전관리 제외.

## 4) 네이밍 규칙
- 파일/폴더: `snake_case` 기본.
- 계획/리포트 자동 산출물:
  - 계획: `plan-YYYY-MM-DD-<task>.md`
  - 실행: `run-YYYYMMDD-HHMMSS-<task>.md`

## 5) README 규칙
- `README.md`가 있는 폴더는 반드시 `## Local Subfolder Guide` 섹션을 포함한다.
- 하위 폴더가 있으면 용도를 한 줄씩 명시한다.

## 6) 실행/검증 규칙
- Godot 실행은 안전 스크립트 기준:
  - 에디터: `run_editor_safe.bat`
  - 게임: `run_game_safe.bat`
  - 헤드리스: `powershell -ExecutionPolicy Bypass -File tools/run_godot_safe.ps1 -Mode headless`
- 변경 후 최소 1회 정적/헤드리스 검증을 수행한다.

## 7) 변경 절차
1. 구조 영향이 있는 변경은 먼저 이 룰 문서 기준으로 경로를 설계한다.
2. 파일 이동 후 참조 경로(`res://`, 문서 링크, 스크립트 경로)를 즉시 치환한다.
3. `tools/check_project_rules.ps1`로 룰 위반 여부를 확인한다.


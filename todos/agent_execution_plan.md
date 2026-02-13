# Card Battle Agent Execution Plan

기준 문서: `todos/card-battle-todo.md` (2026-02-13 기준 미완료 항목)

## 1. 에이전트 분담

| 에이전트 | 책임 | 입력 | 산출물 |
|---|---|---|---|
| `spec-analyst` | 남은 항목 재정의, 우선순위 잠금 | `todos/card-battle-todo.md`, `docs/*.md` | 세부 작업 체크리스트 |
| `core-developer` | 기능 구현 | 세부 체크리스트 | GDScript/tscn/tres 변경 |
| `polish-specialist` (신규) | Phase 4 폴리시(VFX/SFX/호버 팝업) | 전투/ UI 씬, 카드 데이터 | 완성도 개선 결과 |
| `code-reviewer` | 규칙/품질 리뷰 | 변경 파일 전체 | 리뷰 결과(수정 항목) |
| `integrity-checker` | 요구사항 정합성 검증 | 기획 + 구현 결과 | 검증 체크/QA 체크리스트 |
| `release-manager` (신규) | Phase 5 QA + 출시 게이트 | QA 체크리스트, 실행 로그 | PASS/FAIL 판정 |
| `qa-tester` | 최종 수동 QA | 빌드 결과, 테스트 시나리오 | 테스트 리포트 |

## 2. 즉시 실행할 작업 (남은 항목 기준)

1. `polish-specialist`
- [x] ComfyUI 카드 아트 10장 생성 후 `assets/ui/cards/` 매핑 확인
- [x] 소환/공격/사망 VFX 강화 (`scenes/battle/effects/`, `scripts/card_battle/vfx/`)
- [x] SFX 연결 (`scripts/autoload/audio_manager.gd`)
- [x] 카드 호버 상세 팝업 구현 (`scenes/ui/battle_hud.tscn`, `scripts/ui/battle_hud.gd`)

2. `release-manager` + `qa-tester`
- [ ] Headless 에러 체크 통과 (환경 이슈로 재시도 필요)
- [ ] 게임 플로우 테스트(메뉴 -> 전투 -> 종료)
- [ ] AI 턴 정상 동작 확인
- [ ] 키워드 효과(Taunt/Rush/Battlecry) 검증

## 3. 실행 순서

1. `spec-analyst`가 오늘 작업 범위를 확정
2. `core-developer`와 `polish-specialist`가 구현
3. `code-reviewer` 수정 요청 반영
4. `integrity-checker` 정합성 검증
5. `release-manager`/`qa-tester` 최종 판정

## 4. 운영 규칙

- 순서 고정: 상위 단계 승인 전 다음 단계 진행 금지
- 증거 필수: 테스트는 명령어/결과/관련 파일을 함께 기록
- 범위 통제: 이번 사이클은 `card-battle-todo` 미완료 항목만 처리

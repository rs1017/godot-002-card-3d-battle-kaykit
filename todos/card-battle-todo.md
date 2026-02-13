# Card Battle - Development Todo

## Phase 1: Foundation
- [x] Game Design Spec 작성
- [x] CardData Resource 클래스 구현
- [x] 카드 데이터 10개 .tres 생성
- [x] project.godot 설정 변경
- [x] GameManager 카드 배틀용 수정

## Phase 2: Core Systems
- [x] BattleManager (턴/마나/승패 관리)
- [x] PlayerState (HP/마나/덱/손패/필드)
- [x] DeckSystem (셔플/드로우)
- [x] HandManager (손패 관리)
- [x] BoardManager (필드 관리)
- [x] AIOpponent (간단한 랜덤 AI)
- [x] 멀티플레이 세션 기반 추가 (2~4인 설정용 MultiplayerManager)
- [x] 4인(2v2) 턴 로테이션 1차 구현 (Seat 1/3/2/4 순환, 팀 공유 상태)

## Phase 3: 3D Visuals + UI
- [x] BattleBoard 3D 씬 구성
- [x] Card3D 인터랙션 (호버/드래그/소환)
- [x] MinionOnBoard KayKit 3D 모델
- [x] BattleHUD UI (마나, HP, 턴 종료)

## Phase 4: Polish
- [x] ComfyUI 카드 아트 10장 생성
- [x] 소환/공격/사망 애니메이션 이펙트
- [x] 사운드 효과
- [x] 카드 호버 상세 팝업
- [x] Minion Masters 레퍼런스 기반 전장 맵 리워크 (Space Base 테마)

## Phase 5: QA
- [x] Headless 에러 체크 통과 (`tools/run_godot_safe.ps1 -Mode headless`)
- [ ] 게임 플로우 테스트 (체크리스트: docs/card-battle-phase5-qa-checklist.md)
- [ ] AI 턴 정상 동작 확인 (체크리스트: docs/card-battle-phase5-qa-checklist.md, F9 QA 훅 추가 완료)
- [ ] 키워드 효과 검증 (Taunt, Rush, Battlecry) - F8 QA 훅 추가 완료
- [x] 정적 QA 스크립트 점검 통과 (`tools/qa_card_battle_static_checks.ps1`)

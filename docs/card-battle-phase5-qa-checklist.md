# Card Battle Phase 5 QA Checklist

Date: 2026-02-13
Scope: `scenes/battle/battle_board.tscn`

## 1) Headless
- Command:
```powershell
powershell -ExecutionPolicy Bypass -File tools/run_godot_safe.ps1 -Mode headless -ProjectPath .
```
- Expected: no parse/startup errors.
- Note: this command forces writable local APPDATA path to avoid `user://logs` permission crash.

## 2) Game Flow
1. Open `scenes/ui/main_menu.tscn` and start battle.
2. Confirm turn loop: player turn -> enemy turn -> player turn.
3. Confirm game ends with `VICTORY` or `DEFEAT` panel.

## 3) AI Turn
1. End your turn with `END TURN`.
2. Verify AI plays available cards and performs attacks.
3. Verify no turn lock (AI must return control to player).
4. Optional quick check: press `F9` and confirm `AI turn check: PASS` in HUD log.

## 4) Keyword Checks (Taunt, Rush, Battlecry)
- In battle scene, press `F8`.
- Expected HUD logs:
  - `Keyword checks: PASS`
  - Taunt non-taunt target block = true
  - Taunt hero attack block = true
  - Rush summon attack ready = true
  - Rush hero attack block on summon = true
  - Battlecry damage applied = true
  - Battlecry draw applied = true

## 5) Evidence
- Save 1-2 screenshots for each section above.
- Record command output or error text for failed checks.

## 6) Static QA (No Runtime)
- Command:
```powershell
powershell -ExecutionPolicy Bypass -File tools/qa_card_battle_static_checks.ps1
```
- Expected: `QA_STATIC_CHECK: PASS`

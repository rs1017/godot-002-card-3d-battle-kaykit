# Repository Guidelines

## Project Structure & Module Organization
This is a Godot 4.5 card-battle prototype.
- `project.godot`: engine/project settings, autoload registration, input map.
- `scenes/`: playable scenes (`ui/`, `battle/`, `characters/`, `levels/`).
- `scripts/`: GDScript by feature (`card_battle/`, `autoload/`, `ui/`, `characters/`, `components/`).
- `resources/cards/`: card data `.tres` assets.
- `assets/`: imported art and third-party packs (KayKit, UI textures, models).
- `tools/`: local automation scripts (Godot setup, asset linking/generation).
- `docs/`, `todos/`: design specs and planning notes.

## Build, Test, and Development Commands
Run from repository root (PowerShell).
- `./godot_setup_link.bat`: create `Engine`, `reference`, and `godot-game` links for local setup.
- `$GODOT = ".\\Engine\\Godot_v4.5.1-stable_mono_win64.exe"; & $GODOT --editor --path .`: open editor.
- `$GC = ".\\Engine\\Godot_v4.5.1-stable_mono_win64_console.exe"; & $GC --path .`: run game.
- `& $GC --headless --path . --quit`: quick CI-style validation (imports, parse errors, startup).
- `& $GODOT --headless --export-release "Windows Desktop" build/game.exe`: release export (requires export preset).

## Coding Style & Naming Conventions
- Use typed GDScript (`var hp: int`, `func foo() -> void`).
- Follow existing indentation style in `.gd` files (tabs).
- File names use `snake_case` (for example `battle_manager.gd`, `card_fireball.tres`).
- Scene/resource paths should be stable `res://...` references; keep script and scene names aligned.
- Keep gameplay code in feature folders (`scripts/card_battle/`) and shared logic in `scripts/autoload/` or `scripts/components/`.

## Testing Guidelines
No dedicated unit-test suite is currently checked in. Use:
- Headless startup check: `--headless --quit` on every change.
- Scene smoke tests: open and run edited scenes (`scenes/ui/main_menu.tscn`, `scenes/battle/battle_board.tscn`).
- For new mechanics, add reproducible manual test steps in PR description.

## Commit & Pull Request Guidelines
Git history is not available in this workspace snapshot, so no verified historical convention can be extracted. Use this standard:
- Commit format: `type(scope): imperative summary` (for example `feat(battle): add end-turn state lock`).
- Keep commits focused (code + related scene/resource updates together).
- PRs should include: purpose, changed scenes/scripts, test evidence (headless command + manual checks), linked issue/task, and screenshots/video for UI/visual changes.

## Reference Collection Rule
When the user asks to find references for **Minion Masters**, always:
- Search the web starting from the official Steam page.
- Save screenshots and run-screen images to `reference/minion-masters/`.
- Keep a source/observation note in `reference/minion-masters/README.md` (date, links, key takeaways).

## Default Ralph Workflow
Use this workflow by default unless the user asks for a different process.
1. Collect references first (Minion Masters starts from official Steam page).
2. When writing planning docs, use style patterns from `reference/docs` first.
3. Create a plan document.
4. Distribute the plan document.
5. Produce graphics using either ComfyUI or existing KayKit resources.
6. Implement code changes.
7. Run review agent validation on changed code and planning quality.
8. Run QA (at least static QA + headless/manual checks) and record results.
9. If review/QA fails, fetch references again and repeat cycle.

## Planning Output Format Rule
- Planning documents must be generated in Markdown (`.md`) format.
- When including images in planning docs, store files under an `images/` folder near the doc and link them with relative paths.
- Planning data tables/metrics/balancing sheets must be stored as `.csv` files.
- Planning document body language must be Korean by default (except file paths, code, formulas, and proper nouns).
- A planning cycle is considered incomplete if the above file-format rules are not met.

## ComfyUI Path and Invocation Rule
- ComfyUI install root is fixed to `D:\comfyUI`.
- Do not use WebUI/Forge routes for 2D asset generation in this repository.
- Start ComfyUI from `D:\comfyUI\run_comfyui.bat` and execute generation via URL API calls (`http://127.0.0.1:8188` by default).
- For planning documents, never leave external image URLs directly in markdown.
- If a reference image comes from the web, download it first into a local `images/` folder, then link the local relative path.

One-command kickoff:
- `powershell -ExecutionPolicy Bypass -File tools/run_ralph_pipeline.ps1 -TaskName "ralph-default-cycle" -GraphicsMode KayKit`
- Use `-GraphicsMode ComfyUI` when image generation is required and ComfyUI API is running.

Repeat-cycle command (default):
- `powershell -ExecutionPolicy Bypass -File tools/run_ralph_loop.ps1 -TaskBaseName "ralph-cycle" -GraphicsMode KayKit`
- Loop stop condition: create `docs/ralph/COMPLETE.flag`.
- Rule: if repeat count is not specified in a Ralph request, run 10 cycles by default.
- Rule: repeat until QA/review completion, or until max cycle limit is reached.

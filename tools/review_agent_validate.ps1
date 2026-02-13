param(
	[string]$CycleName,
	[string]$PlanningPath = "docs/planning/game_design_master_plan.md",
	[int]$PlanningMinPages = 300,
	[string]$ReferencePath = "docs/ralph/reference/minion-masters",
	[string]$PlanningGuidePath = "docs/ralph/research/naver_planning_style_guide_2026-02-13.md"
)

$ErrorActionPreference = "Stop"

function Ensure-Dir {
	param([string]$Path)
	if (-not (Test-Path $Path)) {
		New-Item -ItemType Directory -Force -Path $Path | Out-Null
	}
}

$repoRoot = Resolve-Path (Join-Path $PSScriptRoot "..")
Set-Location $repoRoot

$date = Get-Date -Format "yyyy-MM-dd"
$reviewsDir = "docs/ralph/reviews"
Ensure-Dir $reviewsDir

$planGateOut = (& powershell -ExecutionPolicy Bypass -File "tools/check_planning_gate.ps1" -PlanningPath $PlanningPath -MinPages $PlanningMinPages 2>&1 | Out-String)
$planGatePass = $LASTEXITCODE -eq 0

$run = Get-ChildItem "docs/ralph/runs" -Filter ("run-*-{0}.md" -f $CycleName) -ErrorAction SilentlyContinue | Sort-Object LastWriteTime -Descending | Select-Object -First 1
$runBody = if ($run) { Get-Content $run.FullName -Raw } else { "" }

$checkRunExists = $run -ne $null
$checkStatic = $runBody -match "Static QA:\s+PASS"
$checkHeadless = $runBody -match "Headless startup:\s+PASS"
$checkReviewSection = $runBody -match "## Review Checklist"

$runPlanPath = ""
if ($runBody -match "(?m)^Plan:\s+(.+)$") {
	$runPlanPath = $matches[1].Trim()
}

$checkGuideDoc = Test-Path $PlanningGuidePath
$planBody = if (-not [string]::IsNullOrWhiteSpace($runPlanPath) -and (Test-Path $runPlanPath)) { Get-Content $runPlanPath -Raw } else { "" }
$checkPlanExists = -not [string]::IsNullOrWhiteSpace($planBody)
$checkPlanSections = $false
if ($checkPlanExists) {
	$requiredSections = @(
		"## 1. 목차",
		"## 2. 개요",
		"## 3. 본론",
		"## 4. 구현 가능성",
		"## 5. QA/검증 계획",
		"## 6. 참고/가정"
	)
	$missingCount = 0
	foreach ($section in $requiredSections) {
		if (-not $planBody.Contains($section)) {
			$missingCount++
		}
	}
	$checkPlanSections = $missingCount -eq 0
}
$hasExternalImageLink = $planBody -match '!\[[^\]]*\]\((https?://[^)]+)\)'
$checkLocalImageRule = $checkPlanExists -and (-not $hasExternalImageLink)

$shotCount = (Get-ChildItem $ReferencePath -Filter "screenshot_*.jpg" -ErrorAction SilentlyContinue).Count
$checkShots = $shotCount -ge 8
$checkWebAudit = Test-Path "docs/ralph/reference_web_audit_2026-02-13.md"

$battleBoard = Get-Content "scripts/card_battle/battle_board.gd" -Raw
$battleManager = Get-Content "scripts/card_battle/battle_manager.gd" -Raw
$aiOpponent = Get-Content "scripts/card_battle/ai_opponent.gd" -Raw

$funSignals = 0
if ($battleBoard.Contains("KEY_F8") -and $battleBoard.Contains("KEY_F9")) { $funSignals += 1 }
if ($battleBoard.Contains("_execute_ai_turn(")) { $funSignals += 1 }
if ($battleManager.Contains("run_debug_keyword_checks")) { $funSignals += 1 }
if ($battleManager.Contains("run_debug_ai_turn_check")) { $funSignals += 1 }
if ($battleManager.Contains("rush_hero_block_on_summon")) { $funSignals += 1 }
if ($aiOpponent.Contains("_choose_attack_target")) { $funSignals += 1 }

$funScore = [math]::Min(10, $funSignals + 4)
$funPass = $funScore -ge 7

$allPass = $planGatePass -and $checkRunExists -and $checkStatic -and $checkHeadless -and $checkReviewSection -and $checkGuideDoc -and $checkPlanExists -and $checkPlanSections -and $checkLocalImageRule -and $checkShots -and $checkWebAudit -and $funPass

$reviewPath = Join-Path $reviewsDir ("review-{0}-{1}.md" -f $date, $CycleName)
$review = @"
# Review Agent Report - $CycleName

Date: $date

## Gate Checks
- Planning gate ($PlanningMinPages+ pages): $(if ($planGatePass) { "PASS" } else { "FAIL" })
- Run report exists: $(if ($checkRunExists) { "PASS" } else { "FAIL" })
- Run static QA PASS: $(if ($checkStatic) { "PASS" } else { "FAIL" })
- Run headless PASS: $(if ($checkHeadless) { "PASS" } else { "FAIL" })
- Run includes review checklist: $(if ($checkReviewSection) { "PASS" } else { "FAIL" })
- Planning guide doc exists: $(if ($checkGuideDoc) { "PASS" } else { "FAIL" }) ($PlanningGuidePath)
- Plan file resolved from run report: $(if ($checkPlanExists) { "PASS" } else { "FAIL" }) ($runPlanPath)
- Plan required sections match guideline: $(if ($checkPlanSections) { "PASS" } else { "FAIL" })
- Plan local image-link rule (no external image URL): $(if ($checkLocalImageRule) { "PASS" } else { "FAIL" })
- Reference screenshot count >= 8: $(if ($checkShots) { "PASS" } else { "FAIL" }) (count=$shotCount)
- Web audit note exists: $(if ($checkWebAudit) { "PASS" } else { "FAIL" })
- Fun QA heuristic (>=7): $(if ($funPass) { "PASS" } else { "FAIL" }) (score=$funScore/10)

## Planning Gate Output
---
$planGateOut
---

## Final
- Review Agent Verdict: $(if ($allPass) { "PASS" } else { "FAIL" })
"@

Set-Content -Path $reviewPath -Value $review
Write-Output "REVIEW_REPORT: $reviewPath"
Write-Output "REVIEW_VERDICT: $(if ($allPass) { "PASS" } else { "FAIL" })"

if (-not $allPass) {
	exit 1
}

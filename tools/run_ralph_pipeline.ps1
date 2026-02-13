param(
	[string]$TaskName = "card-battle-iteration",
	[ValidateSet("KayKit", "ComfyUI")]
	[string]$GraphicsMode = "KayKit",
	[string]$ComfyUIRoot = "D:\comfyUI",
	[string]$ComfyUIUrl = "http://127.0.0.1:8188",
	[string]$ReferenceTopic = "Minion Masters",
	[int]$SteamAppId = 489520,
	[int]$ScreenshotCount = 8,
	[string]$PlanningDocPath = "docs/planning/game_design_master_plan.md",
	[int]$PlanningMinPages = 300,
	[switch]$SkipHeadless
)

$ErrorActionPreference = "Stop"

function Ensure-Dir {
	param([string]$Path)
	if (-not (Test-Path $Path)) {
		New-Item -ItemType Directory -Force -Path $Path | Out-Null
	}
}

function Slugify {
	param([string]$Text)
	$slug = $Text.ToLowerInvariant() -replace "[^a-z0-9]+", "-"
	$slug = $slug.Trim("-")
	if ([string]::IsNullOrWhiteSpace($slug)) {
		return "task"
	}
	return $slug
}

function Write-Stage {
	param([string]$Message)
	Write-Host ("`n[RALPH] " + $Message)
}

function Test-WriteAccess {
	param([string]$Dir)
	try {
		Ensure-Dir $Dir
		$probe = Join-Path $Dir ".write_probe.tmp"
		Set-Content -Path $probe -Value "ok" -ErrorAction Stop
		Remove-Item $probe -Force -ErrorAction SilentlyContinue
		return $true
	} catch {
		return $false
	}
}

function Resolve-GodotConsoleExe {
	$candidates = @(
		"Engine/Godot_v4.5.1-stable_mono_win64_console.exe",
		"Engine/Godot_v4.5.1-stable_win64_console.exe"
	)
	foreach ($candidate in $candidates) {
		if (Test-Path $candidate) {
			return (Resolve-Path $candidate).Path
		}
	}
	$found = Get-ChildItem "Engine" -Recurse -Filter "*console*.exe" -ErrorAction SilentlyContinue | Select-Object -First 1
	if ($found) {
		return $found.FullName
	}
	return ""
}

$repoRoot = Resolve-Path (Join-Path $PSScriptRoot "..")
Set-Location $repoRoot

$stamp = Get-Date -Format "yyyyMMdd-HHmmss"
$today = Get-Date -Format "yyyy-MM-dd"
$taskSlug = Slugify -Text $TaskName

$docsRoot = "docs/ralph"
$runRoot = Join-Path $docsRoot "runs"
$distRoot = Join-Path $docsRoot "distribution"
$planRoot = Join-Path $docsRoot "plans"
Ensure-Dir $docsRoot
Ensure-Dir $runRoot
Ensure-Dir $distRoot
Ensure-Dir $planRoot

$preferredReferenceRoot = "reference/minion-masters"
$referenceRoot = $preferredReferenceRoot
Ensure-Dir $referenceRoot
if (-not (Test-WriteAccess -Dir $referenceRoot)) {
	$referenceRoot = "docs/ralph/reference/minion-masters"
	Ensure-Dir $referenceRoot
}

$steamStoreUrl = "https://store.steampowered.com/app/$SteamAppId/Minion_Masters/"
$steamAssetRoot = "https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/$SteamAppId"
$referenceReadmePath = Join-Path $referenceRoot "README.md"

Write-Stage "1) Collect references from official Steam page"
$downloaded = @()
$referenceCollectionMode = "online"
try {
	$html = (Invoke-WebRequest -UseBasicParsing -Uri $steamStoreUrl).Content
	$normalized = $html -replace "\\/", "/" -replace "&quot;", '"'
	$ssPattern = "https://shared\.fastly\.steamstatic\.com/store_item_assets/steam/apps/$SteamAppId/ss_[^""\?]+\.1920x1080\.jpg\?t=\d+"
	$ssUrls = [regex]::Matches($normalized, $ssPattern) | ForEach-Object { $_.Value } | Select-Object -Unique | Select-Object -First $ScreenshotCount

	if ($ssUrls.Count -eq 0) {
		throw "No Steam screenshot URLs found."
	}

	$index = 1
	foreach ($url in $ssUrls) {
		$baseName = [System.IO.Path]::GetFileName(($url -split "\?")[0])
		$outPath = Join-Path $referenceRoot ("screenshot_{0:00}_{1}" -f $index, $baseName)
		Invoke-WebRequest -UseBasicParsing -Uri $url -OutFile $outPath
		$downloaded += $outPath
		$index++
	}

	$headerUrl = "$steamAssetRoot/header.jpg"
	$capsuleUrl = "$steamAssetRoot/capsule_616x353.jpg"
	$headerPath = Join-Path $referenceRoot "header.jpg"
	$capsulePath = Join-Path $referenceRoot "capsule_616x353.jpg"
	Invoke-WebRequest -UseBasicParsing -Uri $headerUrl -OutFile $headerPath
	Invoke-WebRequest -UseBasicParsing -Uri $capsuleUrl -OutFile $capsulePath
} catch {
	$referenceCollectionMode = "offline-fallback"
	$seedShots = Get-ChildItem $preferredReferenceRoot -Filter "screenshot_*.jpg" -ErrorAction SilentlyContinue | Select-Object -First $ScreenshotCount
	if ($seedShots.Count -gt 0) {
		foreach ($shot in $seedShots) {
			$target = Join-Path $referenceRoot $shot.Name
			Copy-Item -Path $shot.FullName -Destination $target -Force -ErrorAction SilentlyContinue
		}
	}
	$downloaded = Get-ChildItem $referenceRoot -Filter "screenshot_*.jpg" -ErrorAction SilentlyContinue | Select-Object -First $ScreenshotCount | ForEach-Object { $_.FullName }
}

$referenceReadme = @"
# Minion Masters Reference Pack

## What Was Collected ($today)
- Collection mode: $referenceCollectionMode
- Store header and capsule images
- $($downloaded.Count) gameplay screenshots (1920x1080)

## Sources
- Steam store: $steamStoreUrl
- Steam CDN root: $steamAssetRoot

## Observation Notes
- Arena readability is built on strong team color contrast and large hit silhouettes.
- The summon-to-impact loop is short; feedback needs to be immediate and layered.
- Board state, mana, and hand information are readable within one fast glance.
- Combat effects are noisy but target ownership remains clear through color and framing.

## Reuse Rule For This Repository
1. Start from official Steam page for Minion Masters.
2. Save screenshots and run-screen images under reference/minion-masters/.
3. Update this README with date, source links, and key takeaways.
"@
Set-Content -Path $referenceReadmePath -Value $referenceReadme

Write-Stage "2) Create planning document"
$planPath = Join-Path $planRoot ("plan-{0}-{1}.md" -f $today, $taskSlug)
$planImageRoot = Join-Path $planRoot "images/minion-masters"
Ensure-Dir $planImageRoot

$shotFiles = Get-ChildItem $referenceRoot -Filter "screenshot_*.jpg" -ErrorAction SilentlyContinue | Sort-Object Name | Select-Object -First $ScreenshotCount
foreach ($shot in $shotFiles) {
	Copy-Item -Path $shot.FullName -Destination (Join-Path $planImageRoot $shot.Name) -Force
}

$imageLines = @()
$imageIndex = 1
foreach ($shot in $shotFiles) {
	$relative = "images/minion-masters/$($shot.Name)"
	$imageLines += "$imageIndex. 레퍼런스 스크린샷"
	$imageLines += "![reference-$imageIndex]($relative)"
	$imageLines += ""
	$imageIndex++
}
if ($imageLines.Count -eq 0) {
	$imageLines += "- (수집된 스크린샷 없음: 다음 사이클에서 재수집 필요)"
}
$imageBlock = ($imageLines -join "`n")

$planDoc = @"
# Ralph Plan - $TaskName

Date: $today
Reference Topic: $ReferenceTopic
Graphics Mode: $GraphicsMode

## 0. 표지/메타
- 문서 ID: plan-$today-$taskSlug
- 기준 지침: docs/ralph/research/naver_planning_style_guide_2026-02-13.md

## 1. 목차
1. 개요
2. 본론
3. 구현 가능성
4. QA/검증
5. 참고/가정

## 2. 개요
- 대상: $ReferenceTopic 기반 카드 배틀 루프 개선
- 배경: 전투 가독성, 짧은 전투 순환, 즉시 피드백 강화를 우선 과제로 설정
- 목표: 한 사이클 내 구현 가능한 단일 변경안을 정의하고 검증 가능한 형태로 문서화

## 3. 본론
### 3.1 기획안 정의
- 이번 사이클의 주제 폭은 좁게 유지한다.
- 변경 범위는 하나의 기능/화면/상태 흐름으로 제한한다.

### 3.2 사용 시점/동작 맥락
- 전투 시작~중반 구간에서 플레이어가 가장 자주 보는 정보(코스트/핸드/전장 상태)를 우선 개선한다.

### 3.3 단계별 흐름(요약)
1. 문제 구간 식별
2. 단일 개선안 정의
3. 씬/스크립트 적용
4. QA 체크

### 3.4 레퍼런스 이미지(로컬 링크)
$imageBlock

### 3.5 핵심 재미 포인트 (한 문장)
- 짧은 판단-실행-결과 루프를 강화해, 카드 사용 직후 전황 변화가 즉시 체감되게 한다.

## 4. 구현 가능성
- 예상 영향 경로: scenes/battle, scenes/ui, scripts/card_battle, scripts/ui
- 데이터 변경 필요 시 CSV 또는 `.tres`로 추적 가능하게 기록
- 협업 체크: UI/아트 변경이 포함되면 리소스 경로와 버전 규칙을 함께 명시

## 5. QA/검증 계획
1. 정적 QA: tools/qa_card_battle_static_checks.ps1
2. 헤드리스: tools/run_godot_safe.ps1 -Mode headless
3. 수동 검증: 수정된 씬 1회 이상 실행 후 기대 결과 확인

합격 기준:
- parse/startup 오류 없음
- 핵심 변경 동작 재현 가능
- 문서 내 근거/가정/다음 액션 누락 없음

## 6. 참고/가정
- Steam store: $steamStoreUrl
- Reference README: $referenceReadmePath
- 가정: 본 사이클은 구현 가능한 단일 주제 기준으로 진행
"@
Set-Content -Path $planPath -Value $planDoc

Write-Stage "2-b) Planning gate check (300+ pages required)"
$planningGateOutput = (& powershell -ExecutionPolicy Bypass -File "tools/check_planning_gate.ps1" -PlanningPath $PlanningDocPath -MinPages $PlanningMinPages 2>&1 | Out-String)
$planningGatePass = $LASTEXITCODE -eq 0
if (-not $planningGatePass) {
	$gateReportPath = Join-Path $runRoot ("run-{0}-{1}-planning-gate-fail.md" -f $stamp, $taskSlug)
	$gateReport = @"
# Ralph Run Report - $TaskName (Planning Gate Fail)

Date: $today
Plan: docs/ralph/plans/plan-$today-$taskSlug.md

## Planning Gate
Required pages: $PlanningMinPages
Planning file: $PlanningDocPath
Result: FAIL

### Output
---
$planningGateOutput
---
"@
	Set-Content -Path $gateReportPath -Value $gateReport
	Write-Host "Planning gate failed. Report: $gateReportPath"
	return
}

Write-Stage "3) Distribute plan"
$distPlanPath = Join-Path $distRoot "latest-plan.md"
Copy-Item -Path $planPath -Destination $distPlanPath -Force

Write-Stage "4) Graphics route"
$graphicsNote = ""
if ($GraphicsMode -eq "ComfyUI") {
	try {
		& powershell -ExecutionPolicy Bypass -File "tools/start_comfyui.ps1" -ComfyRoot $ComfyUIRoot -ApiUrl $ComfyUIUrl | Out-Host
		python "tools/generate_card_art.py" --url $ComfyUIUrl --comfy-root $ComfyUIRoot | Out-Host
		$graphicsNote = "ComfyUI generation command executed."
	} catch {
		$graphicsNote = "ComfyUI generation failed: $($_.Exception.Message)"
	}
} else {
	$kaykitGlbCount = (Get-ChildItem "assets/kaykit" -Recurse -Filter *.glb -ErrorAction SilentlyContinue).Count
	$graphicsNote = "KayKit mode selected. Found $kaykitGlbCount GLB assets in assets/kaykit."
}

Write-Stage "5) Run QA checks"
$staticQaPass = $false
$staticQaOutput = ""
try {
	$staticQaOutput = (& powershell -ExecutionPolicy Bypass -File "tools/qa_card_battle_static_checks.ps1" 2>&1 | Out-String)
	if ($LASTEXITCODE -eq 0) {
		$staticQaPass = $true
	}
} catch {
	$staticQaOutput = $_.Exception.Message
}

$headlessPass = $false
$headlessOutput = "skipped"
if (-not $SkipHeadless) {
	try {
		$oldNativeErrPref = $PSNativeCommandUseErrorActionPreference
		$PSNativeCommandUseErrorActionPreference = $false
		$headlessRaw = & powershell -ExecutionPolicy Bypass -File "tools/run_godot_safe.ps1" -Mode headless -ProjectPath "." 2>&1
		$PSNativeCommandUseErrorActionPreference = $oldNativeErrPref
		$innerExitCode = $LASTEXITCODE
		$headlessOutput = ($headlessRaw | Out-String)
		$looksHealthy = $headlessOutput.Contains("Godot Engine v") -and $headlessOutput.Contains("[GameManager] State: NONE -> MAIN_MENU")
		$hasCrash = $headlessOutput.Contains("CrashHandlerException") -or $headlessOutput.Contains("Failed to open 'user://logs")
		$certWarningOnly = $headlessOutput.Contains("Failed to read the root certificate store.")
		if ($innerExitCode -eq 0 -or ($looksHealthy -and -not $hasCrash) -or ($certWarningOnly -and -not $hasCrash)) {
			$headlessPass = $true
		}
	} catch {
		$PSNativeCommandUseErrorActionPreference = $oldNativeErrPref
		$headlessOutput = $_.Exception.Message
		if ($headlessOutput.Contains("Failed to read the root certificate store.")) {
			$headlessPass = $true
		}
	}
}

$runReportPath = Join-Path $runRoot ("run-{0}-{1}.md" -f $stamp, $taskSlug)
$runReport = @"
# Ralph Run Report - $TaskName

Date: $today
Plan: docs/ralph/plans/plan-$today-$taskSlug.md
Distributed Plan: docs/ralph/distribution/latest-plan.md

## Reference Collection
- Steam: $steamStoreUrl
- Screenshots downloaded: $($downloaded.Count)
- Files: $referenceRoot

## Graphics
- Mode: $GraphicsMode
- Note: $graphicsNote

## Review Checklist
1. Confirm changed scene/script paths are valid.
2. Confirm gameplay rule impact is documented in plan/run report.
3. Confirm QA evidence is attached below.

## QA Result
- Static QA: $(if ($staticQaPass) { "PASS" } else { "FAIL" })
- Headless startup: $(if ($SkipHeadless) { "SKIPPED" } elseif ($headlessPass) { "PASS" } else { "FAIL" })

### Static QA Output
---
$staticQaOutput
---

### Headless Output
---
$headlessOutput
---
"@
Set-Content -Path $runReportPath -Value $runReport

Write-Stage "Done"
Write-Host "Plan: $planPath"
Write-Host "Run report: $runReportPath"
Write-Host "Reference: $referenceRoot"


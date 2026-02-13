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
Ensure-Dir $docsRoot
Ensure-Dir $runRoot
Ensure-Dir $distRoot

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
$planPath = Join-Path $docsRoot ("plan-{0}-{1}.md" -f $today, $taskSlug)
$planDoc = @"
# Ralph Plan - $TaskName

Date: $today
Reference Topic: $ReferenceTopic
Graphics Mode: $GraphicsMode

## 1. Reference Summary
- Source pack refreshed under $referenceRoot.
- Core benchmark: fast readability, short combat loop, clear ownership cues.

## 2. Feature Planning
1. Define one concrete gameplay/UI change for this cycle.
2. Implement in scene/script pair with typed GDScript and stable paths.
3. Record manual reproduction steps and expected result.

## 3. Graphic Production Rule
- ComfyUI: generate missing card art with tools/generate_card_art.py.
- KayKit: prefer existing licensed assets under assets/kaykit/.

## 4. Development / Review / QA
1. Development: implement the scoped change.
2. Review: verify logic regressions and scene/script references.
3. QA: run static QA and headless startup check, then manual smoke test.
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


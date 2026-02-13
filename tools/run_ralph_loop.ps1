param(
	[string]$TaskBaseName = "ralph-cycle",
	[ValidateSet("KayKit", "ComfyUI")]
	[string]$GraphicsMode = "KayKit",
	[int]$MaxCycles = 10,
	[string]$CompletionFlag = "docs/ralph/COMPLETE.flag",
	[int]$ReferenceMinShots = 8
)

$ErrorActionPreference = "Stop"

function Ensure-Dir {
	param([string]$Path)
	if (-not (Test-Path $Path)) {
		New-Item -ItemType Directory -Force -Path $Path | Out-Null
	}
}

function Write-Loop {
	param([string]$Message)
	Write-Host ("[RALPH-LOOP] " + $Message)
}

$repoRoot = Resolve-Path (Join-Path $PSScriptRoot "..")
Set-Location $repoRoot

$cycleRoot = "docs/ralph/cycles"
Ensure-Dir $cycleRoot

$summaryPath = Join-Path $cycleRoot ("loop-summary-{0}.md" -f (Get-Date -Format "yyyyMMdd-HHmmss"))
$summaryLines = @()
$summaryLines += "# Ralph Loop Summary"
$summaryLines += ""
$summaryLines += ("Start: {0}" -f (Get-Date -Format "yyyy-MM-dd HH:mm:ss"))
$summaryLines += ("Task Base: {0}" -f $TaskBaseName)
$summaryLines += ("Graphics Mode: {0}" -f $GraphicsMode)
$summaryLines += ("Completion Flag: {0}" -f $CompletionFlag)
$summaryLines += ""

for ($cycle = 1; $cycle -le $MaxCycles; $cycle++) {
	if (Test-Path $CompletionFlag) {
		Write-Loop ("Completion flag detected before cycle {0}. Stopping." -f $cycle)
		$summaryLines += ("- Stopped before cycle {0}: completion flag found." -f $cycle)
		break
	}

	$cycleName = "{0}-c{1:d2}" -f $TaskBaseName, $cycle
	Write-Loop ("Starting cycle: {0}" -f $cycleName)

	& powershell -ExecutionPolicy Bypass -File "tools/run_ralph_pipeline.ps1" -TaskName $cycleName -GraphicsMode $GraphicsMode
	$pipelineExit = $LASTEXITCODE

	$today = Get-Date -Format "yyyy-MM-dd"
	$planPath = "docs/ralph/plans/plan-$today-$cycleName.md"
	$latestRun = Get-ChildItem "docs/ralph/runs" -Filter ("run-*-{0}.md" -f $cycleName) -ErrorAction SilentlyContinue | Sort-Object LastWriteTime -Descending | Select-Object -First 1
	$runPath = if ($latestRun) { $latestRun.FullName } else { "" }
	$runBody = if ($runPath -and (Test-Path $runPath)) { Get-Content $runPath -Raw } else { "" }

	$referencePath = "docs/ralph/reference/minion-masters"
	$shotCount = (Get-ChildItem $referencePath -Filter "screenshot_*.jpg" -ErrorAction SilentlyContinue).Count
	$readmePath = Join-Path $referencePath "README.md"
	$readmeBody = if (Test-Path $readmePath) { Get-Content $readmePath -Raw } else { "" }

	$checkPipeline = ($pipelineExit -eq 0)
	$checkPlan = (Test-Path $planPath)
	$checkRun = (-not [string]::IsNullOrWhiteSpace($runPath))
	$checkRefCount = ($shotCount -ge $ReferenceMinShots)
	$checkReadmeSources = ($readmeBody -match "## Sources")
	$checkReadmeNotes = ($readmeBody -match "## Observation Notes")
	$checkStaticQa = ($runBody -match "Static QA:\s+PASS")
	$checkReviewSection = ($runBody -match "## Review Checklist")
	$reviewOutput = (& powershell -ExecutionPolicy Bypass -File "tools/review_agent_validate.ps1" -CycleName $cycleName 2>&1 | Out-String)
	$reviewPass = $LASTEXITCODE -eq 0
	$allCycleChecks = $checkPipeline -and $checkPlan -and $checkRun -and $checkRefCount -and $checkReadmeSources -and $checkReadmeNotes -and $checkStaticQa -and $checkReviewSection -and $reviewPass

	$validationPath = Join-Path $cycleRoot ("cycle-{0:d2}-validation.md" -f $cycle)
	$validation = @"
# Cycle Validation - $cycleName

Date: $today
Task: $cycleName

## Gate Checks
- Pipeline command success: $(if ($checkPipeline) { "PASS" } else { "FAIL" })
- Plan generated: $(if ($checkPlan) { "PASS" } else { "FAIL" })
- Run report generated: $(if ($checkRun) { "PASS" } else { "FAIL" })
- Reference screenshot count >= ${ReferenceMinShots}: $(if ($checkRefCount) { "PASS" } else { "FAIL" }) (count=$shotCount)
- Reference README has Sources: $(if ($checkReadmeSources) { "PASS" } else { "FAIL" })
- Reference README has Observation Notes: $(if ($checkReadmeNotes) { "PASS" } else { "FAIL" })
- Review checklist exists in run report: $(if ($checkReviewSection) { "PASS" } else { "FAIL" })
- Static QA pass in run report: $(if ($checkStaticQa) { "PASS" } else { "FAIL" })
- Review Agent verdict: $(if ($reviewPass) { "PASS" } else { "FAIL" })

## Review Agent Output
---
$reviewOutput
---

## Result
- Cycle quality gate: $(if ($allCycleChecks) { "PASS" } else { "FAIL" })
- Completion flag present: $(if (Test-Path $CompletionFlag) { "YES" } else { "NO" })

## Next
$(if (Test-Path $CompletionFlag) {
"Stop loop: project marked complete."
} elseif ($cycle -eq $MaxCycles) {
"Stop loop: max cycle limit reached."
} elseif ($allCycleChecks) {
"Proceed to next cycle and fetch/validate references again."
} else {
"Proceed to next cycle with fixes required before considering completion."
})
"@
	Set-Content -Path $validationPath -Value $validation

	$summaryLines += ("- Cycle {0:d2}: gate={1}, report={2}" -f $cycle, $(if ($allCycleChecks) { "PASS" } else { "FAIL" }), $validationPath)

	if (Test-Path $CompletionFlag) {
		Write-Loop ("Completion flag detected after cycle {0}. Stopping." -f $cycle)
		break
	}
}

$summaryLines += ""
$summaryLines += ("End: {0}" -f (Get-Date -Format "yyyy-MM-dd HH:mm:ss"))
Set-Content -Path $summaryPath -Value ($summaryLines -join "`n")
Write-Loop ("Summary written: {0}" -f $summaryPath)


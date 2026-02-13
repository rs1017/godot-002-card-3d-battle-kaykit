param(
	[string]$PlanningPath = "docs/planning/game_design_master_plan.md",
	[int]$MinPages = 300
)

$ErrorActionPreference = "Stop"

if (-not (Test-Path $PlanningPath)) {
	Write-Output "PLANNING_GATE: FAIL (missing file: $PlanningPath)"
	exit 1
}

$raw = Get-Content $PlanningPath -Raw
$pageCount = ([regex]::Matches($raw, "(?m)^## Page \d+ - ").Count)

if ($pageCount -lt $MinPages) {
	Write-Output "PLANNING_GATE: FAIL (pages=$pageCount, required=$MinPages)"
	exit 1
}

Write-Output "PLANNING_GATE: PASS (pages=$pageCount, required=$MinPages)"

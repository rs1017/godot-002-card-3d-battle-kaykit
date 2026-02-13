param()

$ErrorActionPreference = "Stop"
$failures = @()

function Add-Failure {
	param([string]$Message)
	$script:failures += $Message
}

Write-Host "[RULE-CHECK] validating project structure..."

# 1) Forbidden folders/files
if (Test-Path "docs/plans") {
	Add-Failure "Forbidden folder exists: docs/plans (use docs/planning)."
}
if (Test-Path "scenes/level1") {
	Add-Failure "Legacy folder exists: scenes/level1 (use scenes/levels)."
}

# 2) Ralph plans must be under docs/ralph/plans
$rootPlans = Get-ChildItem "docs/ralph" -File -Filter "plan-*.md" -ErrorAction SilentlyContinue
if ($rootPlans.Count -gt 0) {
	Add-Failure "Plan files found under docs/ralph root. Move to docs/ralph/plans/."
}

# 3) Readme local guide rule
# Scan only managed doc/asset trees to avoid recursive junction loops.
$readmes = @()
foreach ($root in @("docs", "assets")) {
	if (Test-Path $root) {
		$readmes += Get-ChildItem $root -Recurse -File -Include "README.md", "readme.md" -ErrorAction SilentlyContinue
	}
}
foreach ($readme in $readmes) {
	$raw = Get-Content $readme.FullName -Raw
	if ($raw -notmatch "## Local Subfolder Guide") {
		Add-Failure "README missing Local Subfolder Guide: $($readme.FullName)"
	}
}

if ($failures.Count -gt 0) {
	Write-Host "[RULE-CHECK] FAIL" -ForegroundColor Red
	$failures | ForEach-Object { Write-Host (" - " + $_) -ForegroundColor Red }
	exit 1
}

Write-Host "[RULE-CHECK] PASS" -ForegroundColor Green
exit 0

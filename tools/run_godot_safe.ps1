param(
	[ValidateSet("editor", "game", "headless")]
	[string]$Mode = "editor",
	[string]$ProjectPath = "."
)

$ErrorActionPreference = "Stop"

function Resolve-GodotExe {
	param([bool]$UseConsole)
	$namePattern = if ($UseConsole) { "*console*.exe" } else { "Godot_v*.exe" }
	$found = Get-ChildItem "Engine" -Recurse -Filter $namePattern -ErrorAction SilentlyContinue |
		Where-Object {
			$okName = $_.Name -notlike "*.tmp*"
			if ($UseConsole) {
				$okName = $okName -and ($_.Name -like "*console*.exe")
			} else {
				$okName = $okName -and ($_.Name -notlike "*console*.exe")
			}
			$okName
		} |
		Sort-Object FullName |
		Select-Object -First 1
	if ($found) {
		return $found.FullName
	}
	throw "Godot executable not found under Engine/. Run godot_setup_link.bat first."
}

function Ensure-Dir {
	param([string]$Path)
	if (-not (Test-Path $Path)) {
		New-Item -ItemType Directory -Force -Path $Path | Out-Null
	}
}

$repoRoot = Resolve-Path (Join-Path $PSScriptRoot "..")
Set-Location $repoRoot

$projectFullPath = (Resolve-Path $ProjectPath).Path
$localUserDir = Join-Path $repoRoot ".godot_user"
$localRoaming = Join-Path $localUserDir "Roaming"
$localLocal = Join-Path $localUserDir "Local"
Ensure-Dir $localRoaming
Ensure-Dir $localLocal
# Pre-create Godot app_userdata/log paths so user://logs init cannot fail.
$godotUserDataRoot = Join-Path $localRoaming "Godot\\app_userdata\\kaykit-card-battle"
Ensure-Dir $godotUserDataRoot
Ensure-Dir (Join-Path $godotUserDataRoot "logs")
Ensure-Dir (Join-Path $godotUserDataRoot "bug_reports")

$oldAppData = $env:APPDATA
$oldLocalAppData = $env:LOCALAPPDATA
try {
	# Force Godot user://logs to writable project-local directory.
	$env:APPDATA = $localRoaming
	$env:LOCALAPPDATA = $localLocal

	if ($Mode -eq "editor") {
		$exe = Resolve-GodotExe -UseConsole:$false
		& $exe --editor --path $projectFullPath
		exit $LASTEXITCODE
	}

	if ($Mode -eq "game") {
		$exe = Resolve-GodotExe -UseConsole:$true
		& $exe --path $projectFullPath
		exit $LASTEXITCODE
	}

	$headlessExe = Resolve-GodotExe -UseConsole:$true
	& $headlessExe --headless --path $projectFullPath --quit
	exit $LASTEXITCODE
} finally {
	$env:APPDATA = $oldAppData
	$env:LOCALAPPDATA = $oldLocalAppData
}

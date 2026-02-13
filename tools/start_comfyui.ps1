param(
	[string]$ComfyRoot = "D:\comfyUI",
	[string]$ApiUrl = "http://127.0.0.1:8188",
	[int]$TimeoutSec = 120
)

$ErrorActionPreference = "Stop"

function Test-ComfyApi {
	param([string]$Url)
	try {
		$null = Invoke-RestMethod -Uri ($Url.TrimEnd("/") + "/system_stats") -Method GET -TimeoutSec 5
		return $true
	} catch {
		return $false
	}
}

if (Test-ComfyApi -Url $ApiUrl) {
	Write-Host "COMFYUI_READY: $ApiUrl"
	exit 0
}

$runner = Join-Path $ComfyRoot "run_comfyui.bat"
if (-not (Test-Path $runner)) {
	Write-Error "ComfyUI runner not found: $runner"
	exit 1
}

Start-Process -FilePath $runner -WorkingDirectory $ComfyRoot | Out-Null

$elapsed = 0
while ($elapsed -lt $TimeoutSec) {
	Start-Sleep -Seconds 2
	$elapsed += 2
	if (Test-ComfyApi -Url $ApiUrl) {
		Write-Host "COMFYUI_READY: $ApiUrl"
		exit 0
	}
}

Write-Error "ComfyUI API not ready within timeout: $ApiUrl"
exit 1

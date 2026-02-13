$ErrorActionPreference = "Stop"

$GODOT_VERSION = "4.5.1-stable"
$GODOT_DIR = "D:\github\godot-game\Godot_v4.5.1-stable_mono_win64"
$ZIP_URL = "https://github.com/godotengine/godot/releases/download/4.5.1-stable/Godot_v4.5.1-stable_mono_win64.zip"
$ZIP_FILE = "D:\github\godot-game\Godot_v4.5.1-stable_mono_win64.zip"
$PARENT_DIR = "D:\github\godot-game"

Write-Output "=== Godot $GODOT_VERSION Download Script ==="

# Create parent directory
if (-not (Test-Path $PARENT_DIR)) {
    New-Item -ItemType Directory -Path $PARENT_DIR -Force | Out-Null
    Write-Output "Created: $PARENT_DIR"
}

# Check if already extracted
if (Test-Path "$GODOT_DIR\Godot_v4.5.1-stable_mono_win64_console.exe") {
    Write-Output "Godot already installed at: $GODOT_DIR"
    exit 0
}

# Download
if (-not (Test-Path $ZIP_FILE)) {
    Write-Output "Downloading Godot $GODOT_VERSION (~100MB)..."
    Write-Output "URL: $ZIP_URL"
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    Invoke-WebRequest -Uri $ZIP_URL -OutFile $ZIP_FILE -UseBasicParsing
    Write-Output "Download complete: $ZIP_FILE"
} else {
    Write-Output "ZIP already exists: $ZIP_FILE"
}

# Extract
Write-Output "Extracting..."
Expand-Archive -Path $ZIP_FILE -DestinationPath $PARENT_DIR -Force
Write-Output "Extracted to: $PARENT_DIR"

# Verify
if (Test-Path "$GODOT_DIR\Godot_v4.5.1-stable_mono_win64_console.exe") {
    Write-Output "SUCCESS: Godot installed at $GODOT_DIR"
    Get-ChildItem "$GODOT_DIR\Godot*.exe" | Select-Object -ExpandProperty Name
} else {
    # Check if it extracted to a subfolder
    $extracted = Get-ChildItem $PARENT_DIR -Directory -Filter "Godot*" | Select-Object -First 1
    if ($extracted) {
        Write-Output "Extracted folder: $($extracted.FullName)"
        Get-ChildItem $extracted.FullName -Filter "Godot*.exe" | Select-Object -ExpandProperty Name
    } else {
        Write-Output "FAIL: Could not find Godot executable after extraction"
        exit 1
    }
}

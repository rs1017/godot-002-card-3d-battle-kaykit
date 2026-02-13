$paths = @(
    "C:\Program Files",
    "C:\Program Files (x86)",
    "C:\Users\rs101",
    "D:\",
    "C:\Godot",
    "C:\Tools"
)
foreach ($p in $paths) {
    if (Test-Path $p) {
        Get-ChildItem -Path $p -Recurse -Depth 3 -Filter "Godot*console*.exe" -ErrorAction SilentlyContinue |
            Select-Object -ExpandProperty FullName
        Get-ChildItem -Path $p -Recurse -Depth 3 -Filter "Godot_v*.exe" -ErrorAction SilentlyContinue |
            Select-Object -ExpandProperty FullName
    }
}

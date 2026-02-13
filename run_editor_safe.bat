@echo off
setlocal
powershell -ExecutionPolicy Bypass -File tools\run_godot_safe.ps1 -Mode editor -ProjectPath .
endlocal

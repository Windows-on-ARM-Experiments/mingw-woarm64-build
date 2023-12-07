@echo off
setlocal enabledelayedexpansion
for %%f in (*.exe) do (
    echo === %%f ===
    %%f
    if !errorlevel! neq 0 exit /b !errorlevel!
    echo.
)
echo === all run ===
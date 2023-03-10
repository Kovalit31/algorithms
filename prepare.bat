@echo off
cd %~dp0\python

if exist %cd%\venv\ (
    echo [*] Deleting old venv...
    del /S /F /Q venv
)
echo [*] Creating new venv...
python -m venv venv
cd %~dp0\rust
echo [*] Cargo check running... 
cargo c
cd %~dp0
goto done

:done
echo [*] All done!
if "%~1"=="" goto blank

:blank
exit
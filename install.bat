@echo off

@REM Get the current user PATH
for /f "tokens=2,*" %%A in ('reg query "HKCU\Environment" /v PATH ^| find "PATH"') do set "currentPath=%%B"

set aliasesDirectory=%CD%\aliases
set newPath=%currentPath%;%aliasesDirectory%

@REM Add aliases directory to PATH
REG ADD HKCU\Environment /v PATH /t REG_SZ /d "%newPath%" /f

@REM Refresh the system settings by broadcasting the `WM_SETTINGCHANGE` message
powershell -executionpolicy bypass -File ./refresh-system-settings.ps1

echo Successfully installed aliases

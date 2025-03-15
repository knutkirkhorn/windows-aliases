@echo off
setlocal enabledelayedexpansion

rem Check if components/ui directory exists
if not exist "components\ui" (
    echo Error: components\ui directory not found
    exit /b 1
)

rem Initialize empty string for component names
set "components="

rem Loop through all .tsx files in the directory
for %%F in (components\ui\*.tsx) do (
    rem Get filename without extension
    set "filename=%%~nF"

    rem Append to components string with space separator
    if defined components (
        set "components=!components! !filename!"
    ) else (
        set "components=!filename!"
    )
)

rem Check if any components were found
if not defined components (
    echo No .tsx files found in components\ui
    exit /b 1
)

rem Run the shadcn add command with all components
echo Updating components: %components%
npx shadcn@latest add %components% --overwrite

endlocal

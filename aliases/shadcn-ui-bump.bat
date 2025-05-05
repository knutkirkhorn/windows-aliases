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
call npx shadcn@latest add %components% --overwrite
echo Updated components

rem Run ESLint and Prettier on the updated files
echo Running ESLint with auto-fix on `components/ui` and `hooks`...
call npx eslint --fix "components/ui/**/*.{ts,tsx}" "hooks/**/*.{ts,tsx}"

echo Running Prettier with auto-fix on `components/ui` and `hooks`...
call npx prettier --write "components/ui/**/*.{ts,tsx}" "hooks/**/*.{ts,tsx}"

echo Done^^! Components updated, linted and formatted.

endlocal

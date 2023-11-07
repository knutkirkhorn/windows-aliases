@echo off
setlocal enabledelayedexpansion

set "packages="

@REM Loop through all packages
for %%i in (%*) do (
	@REM Set the current package
	set "package=%%~i"
	@REM Remove the @latest tag
	set "package=!package:@latest=!"

	@REM Check if the package already contains "@latest"
	echo !package! | find /i "@latest" > nul
	@REM If it doesn't, add it
	if errorlevel 1 (
		set "package=!package!@latest"
	)

	@REM Append the package to the packages variable
  	set "packages=!packages!!package! "
)

npm i %packages%

endlocal

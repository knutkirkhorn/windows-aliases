@echo off
@REM Create a directory, navigate into it, initialize npm and open VS Code

@REM Check if directory already exists
@REM Throw an error if it does
if exist %1 (
	echo Directory %1 already exists
) else (
	mkdir %1
	cd %1
	npm init -y
	code .
)

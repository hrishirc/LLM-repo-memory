@echo off
setlocal enabledelayedexpansion

REM Get the script directory and repo root
set SCRIPT_DIR=%~dp0
set REPO_ROOT=%SCRIPT_DIR%..\

set MODE=%1
set TARGET_DIR=%2

REM Define absolute paths for required folders
set SRC_WORKFLOW=%REPO_ROOT%workflow
set SRC_TEMPLATES=%REPO_ROOT%templates
set SRC_CURSOR=%REPO_ROOT%.cursor
set SRC_CLINERULES=%REPO_ROOT%.clinerules

REM Pre-check for required source folders
for %%F in ("%SRC_WORKFLOW%" "%SRC_TEMPLATES%" "%SRC_CURSOR%" "%SRC_CLINERULES%") do (
  if not exist %%F (
    echo ERROR: Required source directory %%F does not exist.
    exit /b 1
  )
)

if "%MODE%"=="" (
  echo Usage: %0 ^<create^|update^> [target_project_dir]
  exit /b 1
)

if "%TARGET_DIR%"=="" (
  set /p TARGET_DIR=Enter the path to your project directory: 
)

if not exist "%TARGET_DIR%" (
  echo Target directory does not exist: %TARGET_DIR%
  exit /b 1
)

REM Copy each folder
call :copy_dir "%SRC_WORKFLOW%" "%TARGET_DIR%\workflow"
echo [DONE] workflow copied.
echo.
call :copy_dir "%SRC_TEMPLATES%" "%TARGET_DIR%\templates"
echo [DONE] templates copied.
echo.
call :copy_dir "%SRC_CURSOR%" "%TARGET_DIR%\.cursor"
echo [DONE] .cursor copied.
echo.
call :copy_dir "%SRC_CLINERULES%" "%TARGET_DIR%\.clinerules"
echo [DONE] .clinerules copied.
echo.

echo Installation complete in '%MODE%' mode.
goto :eof

:copy_dir
set SRC=%~1
set DEST=%~2
if not exist "%DEST%" (
  mkdir "%DEST%" >nul 2>&1
)
for /f "delims=" %%A in ('dir /b /a "%SRC%"') do (
  set ITEM=%SRC%\%%A
  set DEST_ITEM=%DEST%\%%A
  if exist "!ITEM!" (
    if exist "!ITEM!\" (
      if not exist "!DEST_ITEM!" mkdir "!DEST_ITEM!" >nul 2>&1
      call :copy_dir "!ITEM!" "!DEST_ITEM!"
    ) else (
      if "%MODE%"=="create" (
        if exist "!DEST_ITEM!" (
          echo [SKIP] !DEST_ITEM! already exists.
        ) else (
          copy /Y "!ITEM!" "!DEST_ITEM!" >nul
          echo [COPY] !ITEM! -> !DEST_ITEM!
        )
      ) else (
        copy /Y "!ITEM!" "!DEST_ITEM!" >nul
        echo [COPY] !ITEM! -> !DEST_ITEM!
      )
    )
  )
)
goto :eof 
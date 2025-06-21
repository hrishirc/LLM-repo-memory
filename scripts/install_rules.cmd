@echo off
setlocal enabledelayedexpansion

set MODE=%1
set TARGET_DIR=%2

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

set FOLDERS=workflow templates .cursor .clinerules

for %%F in (%FOLDERS%) do (
  if exist "%%F" (
    call :copy_dir "%%F" "%TARGET_DIR%\%%F"
    echo [DONE] %%F copied.
    echo.
  ) else (
    echo Source directory does not exist: %%F
  )
)

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
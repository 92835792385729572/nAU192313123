@echo off
title SGV SPOOFER
set scriptpath=%~dp0
title SGV SPOOFER
  findstr /C:"RUN_NPM_UPDATE" "%scriptpath%\STATUS.txt" >nul
  if not errorlevel 1 (
    Sg new - Updating required NPM packages
    call npm install
)


node Default.mjs
title SGV SPOOFER
PAUSE
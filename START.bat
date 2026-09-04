@echo off
title Sequential File Paste Manager
cd /d "%~dp0"
if exist "dist-electron\win-unpacked" (
  for /r "dist-electron\win-unpacked" %%f in (*.exe) do ( start "" "%%f" & exit /b 0 )
)
if not exist node_modules (
  echo Installing dependencies...
  npm install --prefer-offline
)
npm start

@echo off
REM Video Editing Helper - Trim Video
REM Cuts a clip without re-encoding, so quality stays the same.
REM Edit START and LENGTH below before running.
REM Usage: drag a video file onto this script.

REM Example: start at 00:01:00, take 30 seconds
set START=00:01:00
set LENGTH=30

if "%~1"=="" (
  echo Drag a video file onto this script and try again.
  pause
  exit /b
)

where ffmpeg >nul 2>nul
if errorlevel 1 (
  echo FFmpeg not found. Install FFmpeg and add it to PATH first.
  pause
  exit /b
)

echo Trimming "%~nx1" from %START% for %LENGTH% seconds...
ffmpeg -ss %START% -i "%~1" -t %LENGTH% -c copy "%~dpn1-trimmed.mp4"

echo.
echo Done. Saved as "%~dpn1-trimmed.mp4"
echo To change the clip, edit START and LENGTH at the top of this file.
pause

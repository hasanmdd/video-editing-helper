@echo off
REM Video Editing Helper - Extract Audio
REM Takes audio out of a video and saves it as MP3.
REM Usage: drag a video file onto this script.

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

echo Extracting audio from "%~nx1"...
ffmpeg -i "%~1" -vn -acodec libmp3lame -q:a 2 "%~dpn1.mp3"

echo.
echo Done. Saved as "%~dpn1.mp3"
pause

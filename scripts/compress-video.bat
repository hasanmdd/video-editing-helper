@echo off
REM Video Editing Helper - Compress Video
REM Makes the file smaller with H.264, CRF 23. Original file is kept.
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

echo Compressing "%~nx1"... This can take a while for long videos.
ffmpeg -i "%~1" -vcodec libx264 -crf 23 -preset medium -acodec aac "%~dpn1-compressed.mp4"

echo.
echo Done. Saved as "%~dpn1-compressed.mp4"
pause

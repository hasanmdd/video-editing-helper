@echo off
REM Video Editing Helper - Convert MKV to MP4
REM No re-encoding, so it is fast and quality stays the same.
REM Usage: drag an MKV file onto this script.

if "%~1"=="" (
  echo Drag an MKV video file onto this script and try again.
  pause
  exit /b
)

where ffmpeg >nul 2>nul
if errorlevel 1 (
  echo FFmpeg not found. Install FFmpeg and add it to PATH first.
  pause
  exit /b
)

echo Converting "%~nx1" to MP4...
ffmpeg -i "%~1" -c copy "%~dpn1.mp4"

echo.
echo Done. Saved as "%~dpn1.mp4"
pause

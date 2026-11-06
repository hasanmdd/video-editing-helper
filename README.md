# Video Editing Helper

Simple FFmpeg batch scripts I use for everyday video work on Windows 11. No editing software needed for these small jobs — just drag your video onto a script.

I made this for my own editing work first — large MKV files, movie clips, and videos for my YouTube channel HaSanMDD — and shared it so others can do the same quick tasks without opening a heavy editor.

## You need FFmpeg first

These scripts need FFmpeg installed:

1. Download FFmpeg from https://ffmpeg.org/download.html (Windows build)
2. Extract it, and add the `bin` folder to PATH, **or** copy `ffmpeg.exe` into the same folder as these scripts
3. Test it: open Command Prompt and type `ffmpeg -version`

If FFmpeg is not found, the script will tell you.

## What's inside

- `scripts/convert-mkv-to-mp4.bat` — Converts MKV to MP4 without re-encoding. Fast, and no quality loss. Good for large files like a 41 GB MKV.
- `scripts/compress-video.bat` — Makes a video file smaller (H.264, CRF 23). Good for uploading or sharing.
- `scripts/extract-audio.bat` — Takes the audio out of a video and saves it as MP3.
- `scripts/trim-video.bat` — Cuts a clip from a video without re-encoding. You set the start time and length inside the script.
- `commands.md` — A short list of useful FFmpeg commands I use often.

## How to use

1. Download this repo or clone it:
   ```
   git clone https://github.com/hasanmdd/video-editing-helper.git
   ```
2. Make sure FFmpeg is installed (see above).
3. Drag your video file and drop it onto the script you want to run.
4. The new file will be saved in the same folder as your original video.

> Don't run scripts you don't understand from the internet. Read them first — these are short and commented.

## Safety notes

- These scripts never delete your original video. They always make a new file.
- `convert-mkv-to-mp4.bat` and `trim-video.bat` don't re-encode, so quality stays the same.
- `compress-video.bat` does re-encode, so it takes longer and quality drops a little to save space. Keep the original if you need full quality.

## Who is this for?

Anyone on Windows who edits videos and wants to do quick jobs — convert, compress, cut, or extract audio — without opening Premiere, DaVinci, or Topaz for every small task.

## Contributing

Found a problem or want to add a useful script? Open an issue or a pull request. Keep it simple, safe, and tested on Windows 11.

## License

MIT License — see `LICENSE`.

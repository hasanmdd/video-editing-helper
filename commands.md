# Useful FFmpeg Commands

Short commands I use often. Replace `input.mp4` and `output.mp4` with your own file names.

## Convert MKV to MP4 (no quality loss)
```
ffmpeg -i input.mkv -c copy output.mp4
```

## Compress a video
```
ffmpeg -i input.mp4 -vcodec libx264 -crf 23 -preset medium -acodec aac output.mp4
```
Lower CRF = better quality, bigger file. Try 18 for high quality, 28 for smaller file.

## Extract audio as MP3
```
ffmpeg -i input.mp4 -vn -acodec libmp3lame -q:a 2 output.mp3
```

## Trim a clip (start at 1 minute, take 30 seconds)
```
ffmpeg -ss 00:01:00 -i input.mp4 -t 30 -c copy output.mp4
```

## Get video info
```
ffmpeg -i input.mp4
```

## Extract a thumbnail at 10 seconds
```
ffmpeg -ss 00:00:10 -i input.mp4 -vframes 1 thumbnail.jpg
```

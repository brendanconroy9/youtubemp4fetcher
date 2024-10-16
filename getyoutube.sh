#!/bin/bash

# Check if yt-dlp and ffmpeg are installed
for cmd in yt-dlp ffmpeg; do
    if ! command -v $cmd &> /dev/null; then
        echo "$cmd is not installed. Please install it and try again."
        exit 1
    fi
done

# Check if URL is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <YouTube_URL>"
    exit 1
fi

URL="$1"

# Download audio from YouTube
echo "Downloading audio from YouTube..."
yt-dlp -x --audio-format m4a -o "%(title)s.%(ext)s" "$URL"

# Find the downloaded m4a file
M4A_FILE=$(find . -maxdepth 1 -name "*.m4a" -type f -print -quit)

if [ -z "$M4A_FILE" ]; then
    echo "No .m4a file found in the current directory."
    exit 1
fi

# Generate output filename
WAV_FILE="${M4A_FILE%.m4a}.wav"

# Convert m4a to wav
echo "Converting to WAV..."
ffmpeg -i "$M4A_FILE" -acodec pcm_s16le -ac 2 "$WAV_FILE"

# Clean up m4a file
rm "$M4A_FILE"

echo "Conversion complete! Output file: $WAV_FILE"
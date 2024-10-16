# YouTube to WAV Converter

This bash script downloads audio from a YouTube video and converts it to WAV format.

## Dependencies

- yt-dlp: For downloading YouTube videos
- ffmpeg: For audio conversion

## Installation

1. Install dependencies:
   - On macOS (using Homebrew):
     ```
     brew install yt-dlp ffmpeg
     ```
   - On Ubuntu/Debian:
     ```
     sudo apt update
     sudo apt install yt-dlp ffmpeg
     ```

2. Download the script:

     ```
    curl -O https://github.com/brendanconroy9/youtubemp4fetcher
     ```

4. Make the script executable:
    ```
    chmod +x youtube_to_wav.sh
    ```
5. ## Usage

Run the script with a YouTube URL as an argument:

    ```
    ./youtube_to_wav.sh "https://www.youtube.com/watch?v=dQw4w9WgXcQ
    ```


The script will download the audio and convert it to a WAV file in the current directory.

## Notes

- Works with regular YouTube videos and Shorts
- The output filename is based on the video title
- The intermediate M4A file is automatically deleted after conversion

## Troubleshooting

If you encounter any issues, ensure that yt-dlp and ffmpeg are correctly installed and accessible in your PATH.

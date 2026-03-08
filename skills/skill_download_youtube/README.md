# Skill: Download YouTube

Skill Name:
skill_download_youtube

Purpose:
Download a YouTube video and return the local file path for processing.

This skill is used when Chimera needs to extract content from YouTube videos for transformation or analysis.

---

# Input Contract

{
  "video_url": "string",
  "output_format": "mp4 | mp3",
  "max_resolution": "string (optional)"
}

Example:

{
  "video_url": "https://youtube.com/watch?v=abc123",
  "output_format": "mp3"
}

---

# Output Contract

Success:

{
  "status": "success",
  "file_path": "/tmp/video/audio.mp3",
  "duration_seconds": 180
}

Failure:

{
  "status": "error",
  "error_code": "DOWNLOAD_FAILED",
  "message": "Video unavailable"
}

---

# Worker Usage

Worker agents call this skill when processing tasks such as:

- Extracting audio for transcription
- Repurposing YouTube content
- Content analysis

---

# Dependencies

Potential tools:

- yt-dlp
- ffmpeg

---

# Future Enhancements

- automatic subtitle extraction
- batch downloading
- rate limit protection
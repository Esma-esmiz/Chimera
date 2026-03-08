# Skill: Transcribe Audio

Skill Name:
skill_transcribe_audio

Purpose:
Convert spoken audio into text transcripts.

This skill enables Chimera to transform audio content into text for analysis, summarization, and social media generation.

---

# Input Contract

{
  "audio_file_path": "string",
  "language": "string (optional)"
}

Example:

{
  "audio_file_path": "/tmp/audio/video.mp3",
  "language": "en"
}

---

# Output Contract

Success:

{
  "status": "success",
  "transcript": "Full transcription text",
  "segments": [
    {
      "start": 0.0,
      "end": 5.0,
      "text": "Hello everyone"
    }
  ]
}

Failure:

{
  "status": "error",
  "error_code": "TRANSCRIPTION_FAILED",
  "message": "Audio format unsupported"
}

---

# Worker Usage

Worker agents invoke this skill after downloading audio content.

Example pipeline:

skill_download_youtube  
→ skill_transcribe_audio  
→ skill_generate_caption

---

# Potential Engines

Future implementation may use:

- OpenAI Whisper
- Faster-Whisper
- Deepgram

---

# Future Enhancements

- speaker detection
- language auto-detection
- timestamped subtitles
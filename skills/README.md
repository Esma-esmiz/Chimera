# Chimera Agent Skills

This directory contains the **runtime capabilities** used by Chimera agents.

A **Skill** is a modular capability package that allows an agent to perform a specific task.

Examples:

- Download media
- Transcribe audio
- Generate images
- Post content to social platforms
- Analyze trends

---

# Skill Design Principles

Each skill must define:

1. Purpose
2. Input contract
3. Output contract
4. Error handling
5. Example usage

Skills must be **stateless and reusable**.

---

# Skill Directory Structure

skills/

skill_download_youtube/
README.md

skill_transcribe_audio/
README.md

Future skills may include:

- skill_generate_thumbnail
- skill_generate_caption
- skill_post_twitter
- skill_analyze_trends

---

# Skill Execution Model

Workers invoke skills during task execution.

Flow:

Planner → creates task  
Worker → selects skill  
Skill → executes capability  
Judge → validates result

---

# Skill Interface Contract

All skills must follow this logical interface:

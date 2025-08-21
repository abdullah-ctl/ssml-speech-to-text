


# SSML Local Playground & Audio Generator (Open Source)

Welcome to the **SSML Local Playground**—a simple, open-source Docker-based tool for practicing and converting SSML (Speech Synthesis Markup Language) files to audio (WAV) files locally. Perfect for developers, voice designers, and anyone learning SSML syntax.

## What Does This Project Solve?
- **Local SSML Practice:** Write, edit, and test SSML files without cloud services.
- **Instant Audio Generation:** Converts all `.ssml` files in the `ssml` folder to `.wav` audio files in `data/output/`.
- **Easy Setup:** No Python, Node, or TTS engine installation required on your host—just Docker.
- **Open Source:** Free to use, modify, and contribute on GitHub.

## How to Install & Use

1. **Clone the repository:**
   ```zsh
   git clone https://github.com/abdullah-ctl/ssml-speech-to-text.git
   cd ssml-speech-to-text
   ```
2. **Build and start the container:**
   ```zsh
   docker-compose up --build
   ```
   This will process all `.ssml` files in the `ssml` folder and generate `.wav` files in `data/output/`.

## How to Change SSML and See Updates

- **Edit or add new `.ssml` files** in the `ssml` folder.
- **Rebuild and restart the container** to generate updated audio files:
  ```zsh
  docker-compose down
  docker-compose up --build
  ```
- The new or updated audio files will appear in `data/output/`.

> **Note:**
> Live watching for file changes is not supported out-of-the-box. You must rebuild/restart the container to process new or changed SSML files.

## Contributing
- Fork the repo, submit PRs, and help improve SSML support or add features!

## License
MIT

---

**Keywords:** SSML, SSML Local Playground, Text-to-Speech, Docker, Audio, WAV, Speech Synthesis, Open Source, Local TTS, Developer Tool, Voice Design

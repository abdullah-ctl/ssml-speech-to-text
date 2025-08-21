# SSML Files Directory

This folder is for your SSML code and syntax experiments.

- Add `.ssml` files here to practice and test SSML syntax.
- When you build and run the project, all `.ssml` files in this folder are automatically converted to `.wav` audio files in `data/output/`.
- You can add, edit, or remove `.ssml` files at any time.


**How it works:**
- Each `.ssml` file is processed by the Docker container and converted to audio.
- **Note:** After each file change, you must rebuild and restart the container to generate updated audio files. See the main README for instructions.

For setup, usage, and more details, see the [main README](../README.md).

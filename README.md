# PEMF Audio Generator

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)
[![Discussions](https://img.shields.io/badge/GitHub-Discussions-blue.svg)](../../discussions)
[![Security Policy](https://img.shields.io/badge/Security-Policy-red.svg)](SECURITY.md)
[![Research Only](https://img.shields.io/badge/Use-Research--Only-orange.svg)](README.md#⚠️-disclaimer)
[![Safety First](https://img.shields.io/badge/Safety-First-lightgrey.svg)](SECURITY.md)

Open-source Python scripts for generating **PEMF (Pulsed Electromagnetic Field) audio files** in WAV/FLAC format.  
These audio files can be played through an amplifier and coil (such as a Rodin coil) to produce pulsed electromagnetic fields at specific frequencies.

---

## 📖 Project Overview

### A Brief Note on PEMF
Pulsed Electromagnetic Field (PEMF) technology has been studied for decades in contexts like bone healing, pain management, and neurological research.  

In recent years, **PEMF coils** — including the well-known Rodin coil design — have become more accessible to the public. While this opens opportunities for exploration, it also raises safety considerations.  

This project provides open-source scripts to generate **PEMF-ready audio files** for **research and educational purposes only**.  
While you *can* play these through consumer audio chains and coils, **dedicated frequency generators and certified PEMF devices remain objectively safer**, as they typically include hazard controls and regulatory oversight.

---

### Categories of Frequencies
Over time, numerous categories of EMF frequencies have been proposed or studied. These include:

- **Brainwave bands** (Delta, Theta, Alpha, Beta, Gamma)  
- **Schumann resonances**  
- **Therapeutic ranges** studied for bone healing, pain relief, and recovery  
- **Alternative systems** like Solfeggio tones, Chakras, and Planetary “Cosmic Octave” mappings  

👉 See [CATEGORIES.md](CATEGORIES.md) for a detailed breakdown of each, including origins and reliability levels.

⚠️ Not all coils or playback systems can naturally reproduce every frequency.  
Amplitude-modulated audio is sometimes required, and the provided scripts support this.

---

### ⚠️ Disclaimer
This repository is provided **for research, experimentation, and educational purposes only**.

- The authors and contributors **assume no liability** for the use or misuse of these scripts or the audio files they generate.  
- While certain frequencies are supported by peer-reviewed research, this does **not imply that every frequency is safe, nor that all included ranges are beneficial**.  
- Anyone experimenting with PEMF audio output does so **entirely at their own risk**.  

If you choose to explore this emerging technology, do so responsibly and with proper safety precautions.

---

## 🚀 Getting Started

### 1. Clone the repository
```bash
git clone https://github.com/yourusername/pemf-audio-generator.git
cd pemf-audio-generator
```

### 2. Install dependencies
Create a virtual environment and install dependencies:
```bash
python -m venv .venv
source .venv/bin/activate   # Windows: .venv\Scripts\activate
pip install -r requirements.txt
pip install -e .
```

### 3. Generate Theta frequencies (built-in)
```bash
pemfgen --category theta -o tracks
```

### 4. Generate all categories (requires CSV library)
```bash
pemfgen --category all -o tracks --csv library.csv
```

See [USAGE.md](USAGE.md) for detailed instructions on metadata, amplitude modulation, and advanced options.

---

## 📂 Documentation

- [HISTORY.md](HISTORY.md) — Background on PEMF development  
- [CATEGORIES.md](CATEGORIES.md) — Frequency categories explained (scientific vs esoteric)  
- [REFERENCES.md](REFERENCES.md) — Research papers and sources  
- [USAGE.md](USAGE.md) — Installation & usage guide  
- [CONTRIBUTING.md](CONTRIBUTING.md) — How to contribute (setup, workflow, guidelines)  
- [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) — Community standards and expectations  
- [PROJECTS.md](PROJECTS.md) — Roadmap & project management  
- [SECURITY.md](SECURITY.md) — Responsible disclosure & safety practices

---

## 🗺 Roadmap

This project follows a **documentation-first, code-second** approach.  
The current focus is on implementing a baseline **Theta frequency generator**, with expansion into other categories via CSV libraries.

- 📍 See the pinned issue for the full development plan:  
  [Roadmap: PEMF Audio Generator Development](../../issues/1)

- 🗂 Track progress on the GitHub Projects board:  
  [PEMF Audio Generator Project Board](../../projects)

- 📖 Read more about how roadmap + project board work together:  
  [PROJECTS.md](PROJECTS.md)

---

## 💬 Getting Feedback

This project is still in its early stages, with a strong focus on **documentation and planning before code**.  
We welcome feedback on:

- Clarity of documentation (README, HISTORY, USAGE, etc.)  
- Accuracy of frequency categories and descriptions  
- Suggestions for additional references or safety notes  
- Ideas for features or improvements in the generator scripts  

👉 You can give feedback by:
- Opening an **Issue** (questions, suggestions, or clarifications)  
- Starting a **Discussion** (general thoughts, experience with PEMF, or related projects)  
- Commenting on the **Roadmap Issue** to help shape priorities  

⚠️ Note: This project is for **research and educational purposes only**. Feedback on documentation, usability, and transparency is especially welcome at this stage.

---

## 🛠 Project Goals
- Provide **transparent, reproducible scripts** for generating PEMF audio tracks.  
- Support **metadata-tagged files** for easy playback organization.  
- Encourage **research-based use**, not commercial or medical claims.  
- Keep contributions open, auditable, and provenance-driven.  

---

## 📜 License
This project is licensed under the [MIT License](LICENSE).

---

## 🔒 Security

If you discover a vulnerability or have safety concerns, please see [SECURITY.md](SECURITY.md) for responsible disclosure guidelines.

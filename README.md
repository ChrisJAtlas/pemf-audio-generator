# PEMF Audio Generator
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)
[![Discussions](https://img.shields.io/badge/GitHub-Discussions-blue.svg)](../../discussions)
[![Docs](https://img.shields.io/badge/Docs-FAQ-informational)](FAQ.md)  
[![Roadmap](https://img.shields.io/badge/Roadmap-Milestones-blue)](../../milestones)
[![Labels](https://img.shields.io/badge/Issues-Labels-green)](../../labels)
[![Security Policy](https://img.shields.io/badge/Security-Policy-red.svg)](SECURITY.md)
[![Research Only](https://img.shields.io/badge/Use-Research--Only-orange.svg)](#disclaimer)
[![Safety First](https://img.shields.io/badge/Safety-First-lightgrey.svg)](SECURITY.md)

The **PEMF Audio Generator** is an open-source toolkit for generating **PEMF (Pulsed Electromagnetic Field) audio files** in WAV/FLAC format.

These audio files can be played through an amplifier and coil (such as a Rodin coil) to produce pulsed electromagnetic fields at specific frequencies.

This project emphasizes **research-backed frequency sets, rigorous validation, and clear documentation**, ensuring the audio produced is accurate and credible for research use.

---

## 📖 Project Overview

### A Brief Note on PEMF
Pulsed Electromagnetic Field (PEMF) technology has been studied for decades in contexts like bone healing, pain management, and neurological research.  

In recent years, **PEMF coils** — including the Rodin coil design — have become more accessible to the public. This opens new opportunities for exploration but also raises important safety considerations.  

This project provides open-source scripts to generate **PEMF-ready audio files** for **research and educational purposes only**.

---

### Categories of Frequencies
Over time, numerous categories of EMF frequencies have been proposed or studied:

- **Brainwave bands** (Delta, Theta, Alpha, Beta, Gamma)  
- **Schumann resonances**  
- **Therapeutic ranges** studied for bone healing, pain relief, and recovery  
- **Alternative systems** like Solfeggio tones, Chakras, and Planetary “Cosmic Octave” mappings  

👉 See [CATEGORIES.md](CATEGORIES.md) for a detailed breakdown of each, including origins and reliability levels.

⚠️ Not all coils or playback systems can reproduce every frequency.  
Amplitude-modulated audio may be required — the provided scripts support this.

---

## 🛠 Project Goals
- Provide **transparent, reproducible scripts** for generating PEMF audio tracks.  
- Support **metadata-tagged files** for easy playback organization.  
- Encourage **research-based use**, not commercial or medical claims.  
- Keep contributions open, auditable, and provenance-driven.  

---

## 🗺 Roadmap

This project follows a **documentation-first, code-second** approach.  
The current focus is implementing a baseline **Theta frequency generator**, with expansion into other categories via CSV libraries.

- 📍 See the pinned [Roadmap Issue](../../issues/1) for milestones.  
- 🗂 Track progress in [Projects](../../projects).  
- 📖 Read more about how roadmap + project board work together: [PROJECTS.md](PROJECTS.md)

---

## Disclaimer

This repository is provided **for research, experimentation, and educational purposes only**.

- The authors and contributors **assume no liability** for use or misuse of these scripts or audio files.  
- While some frequencies are supported by peer-reviewed research, this does **not imply that every frequency is safe or beneficial**.  
- Anyone experimenting with PEMF audio output does so **entirely at their own risk**.  

Although playback via consumer audio chains is technically possible, **dedicated frequency generators and certified PEMF devices are safer**, as they typically include hazard controls and regulatory oversight.

---

## 📂 Documentation

- [Project Statement](PROJECT_STATEMENT.md)  
- [Vision & Roadmap](VISION_AND_ROADMAP.md)  
- [FAQ](FAQ.md)  
- [HISTORY.md](HISTORY.md) — Background on PEMF development  
- [CATEGORIES.md](CATEGORIES.md) — Frequency categories explained (scientific vs esoteric)  
- [REFERENCES.md](REFERENCES.md) — Research papers and sources  
- [USAGE.md](USAGE.md) — Installation & usage guide  
- [CONTRIBUTING.md](CONTRIBUTING.md) — How to contribute (setup, workflow, guidelines)  
- [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) — Community standards and expectations  
- [PROJECTS.md](PROJECTS.md) — Roadmap & project management  
- [SECURITY.md](SECURITY.md) — Responsible disclosure & safety practices

---

## 💬 Getting Feedback

We welcome feedback on:

- Clarity of documentation (README, HISTORY, USAGE, etc.)  
- Accuracy of frequency categories and descriptions  
- Suggestions for additional references or safety notes  
- Ideas for features or improvements in the generator scripts  

👉 You can give feedback by:
- Opening an **Issue**  
- Starting a **Discussion**  
- Commenting on the **Roadmap Issue**

---

## 🚀 Getting Started (Postponed)

### 1. Clone the repository
```bash
git clone https://github.com/yourusername/pemf-audio-generator.git
cd pemf-audio-generator
```

### 2. Install dependencies
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

## 🤝 Contributing
Contributions are welcome! Please see [CONTRIBUTING.md](CONTRIBUTING.md) and [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) for details on how to get involved.

---

## 🔒 Security
If you discover a vulnerability or have safety concerns, please see [SECURITY.md](SECURITY.md) for responsible disclosure guidelines.

---

## 📜 License
This project is licensed under the [MIT License](LICENSE).

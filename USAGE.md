# Usage Guide

This document provides detailed instructions for installing, running, and extending the **PEMF Audio Generator**.

---

## 🔧 Installation

### 1. Clone the repository
```bash
git clone https://github.com/yourusername/pemf-audio-generator.git
cd pemf-audio-generator
```

### 2. Create a virtual environment
```bash
python -m venv .venv
source .venv/bin/activate   # Windows: .venv\Scripts\activate
```

### 3. Install dependencies
```bash
pip install -r requirements.txt
pip install -e .
```

> The `-e .` installs the project in editable mode, so local changes are reflected immediately.

---

## 🚀 Running the Generator

### Generate Theta frequencies (built-in)
```bash
pemfgen --category theta -o tracks
```

### Generate all categories (requires CSV)
```bash
pemfgen --category all -o tracks --csv library.csv
```

### Generate a single category from CSV
```bash
pemfgen --category solfeggio -o tracks --csv library.csv
```

---

## 🎛 Command-Line Options

| Option | Default | Description |
|--------|----------|-------------|
| `--category` | `all` | Which category to build. Built-in: `theta`. Others require CSV. |
| `--output-dir` | `tracks` | Where to save generated audio. |
| `--duration` | `900` | Duration in seconds per track (default = **15 minutes**). |
| `--sr` | `44100` | Sample rate in Hz. |
| `--waveform` | `sine` | Type of waveform (`sine` or `square`). |
| `--am` | `false` | Enable amplitude modulation (AM carrier). |
| `--carrier` | `200.0` | Carrier frequency for AM mode. |
| `--depth` | `0.9` | AM depth (0–1). |
| `--fade` | `2.0` | Fade in/out in seconds. |
| `--artist` | `"PEMF Rodin Coil"` | Artist metadata field. |
| `--album` | `"PEMF Frequency Suite"` | Album metadata field. |
| `--genre` | `"PEMF / Brainwave"` | Genre metadata field. |
| `--allow-embedded` | `false` | Override safety limit (allows built-ins beyond Theta). |

---

## 📝 Metadata Tagging

Generated files include metadata tags (FLAC/WAV) for better organization on players:

- **Artist** → usually `"PEMF Rodin Coil"` or custom  
- **Album** → set per category (`Theta`, `Solfeggio`, etc.)  
- **Title** → frequency with descriptor (e.g., `7.83 Hz – Schumann Grounding`)  
- **Comment** → description or intended usage (from CSV)

Example:
```
Title: 7.83 Hz – Schumann Grounding
Artist: PEMF Rodin Coil
Album: PEMF Frequency Suite – Schumann
Comment: Earth resonance grounding (theta/alpha edge)
```

---

## 📂 CSV Library

External categories are defined in `library.csv`. Required columns:

```csv
freq_hz,descriptor,comment,category
7.83,Schumann Fundamental,Earth resonance,schumann
528,Transformation,DNA repair / love,solfeggio
10,Alpha Relaxation,General health and well-being,therapeutic
```

### Build from CSV
```bash
pemfgen --category solfeggio -o tracks --csv library.csv
```

### Build everything in CSV + Theta
```bash
pemfgen --category all -o tracks --csv library.csv
```

---

## 📡 Amplitude Modulation (AM) Mode

Some audio systems and coils cannot reproduce very low frequencies (<20 Hz) directly.  
To work around this, you can **embed the target frequency into an audible carrier**:

```bash
pemfgen --category theta -o tracks --am --carrier 200 --depth 0.9
```

This produces an audible tone (200 Hz) whose **amplitude is modulated** at the target PEMF frequency (e.g., 7.83 Hz).

---

## 🧪 Examples

### Generate Schumann set with AM carrier
```bash
pemfgen --category schumann -o tracks --csv library.csv --am --carrier 200 --depth 0.8
```

### Generate therapeutic frequencies at higher sample rate
```bash
pemfgen --category therapeutic -o tracks --csv library.csv --sr 48000 --duration 1800
```

---

## ⚠️ Safety Notes
- Only **Theta frequencies (4–8 Hz)** are embedded by default.  
- All other sets (Solfeggio, Chakras, Planetary, Therapeutic) require an **external CSV** for transparency.  
- The default file length is **15 minutes (900 seconds)**, but you can change this with `--duration`.  
- Frequencies outside safe playback or coil ranges may produce **unexpected results**.  
- **Always verify provenance** of frequencies you import.  

---

# Contributing to PEMF Audio Generator

Thank you for your interest in contributing to the **PEMF Audio Generator** project!  
This repository is open to collaboration, but contributions must follow a few guidelines to ensure clarity, reproducibility, and safety.

---

## 🛠 Development Setup

1. **Fork the repository** and clone your fork:
   ```bash
   git clone https://github.com/yourusername/pemf-audio-generator.git
   cd pemf-audio-generator
   ```

2. **Create a virtual environment**:
   ```bash
   python -m venv .venv
   source .venv/bin/activate   # Windows: .venv\Scripts\activate
   ```

3. **Install dependencies**:
   ```bash
   pip install -r requirements.txt
   pip install -e .
   ```

4. Run tests (if present) to confirm everything works:
   ```bash
   pytest
   ```

---

## 📂 Code Guidelines

- **Python style**: Follow [PEP 8](https://peps.python.org/pep-0008/).  
- **Typing**: Use type hints (`def foo(x: int) -> str:`).  
- **Docstrings**: Include docstrings for functions, especially those that generate frequencies or handle audio output.  
- **Safety-first defaults**:
  - Only **Theta frequencies (4–8 Hz)** are hardcoded in the repo.  
  - All other categories (Solfeggio, Schumann, etc.) must come from an **external CSV library** to encourage transparency.  

---

## 📊 Frequency Contributions

When adding new frequencies:
- Submit them via **CSV files** (`library.csv`) instead of hardcoding.  
- Each entry must include:
  ```csv
  freq_hz,descriptor,comment,category
  ```
- Provide **references** (scientific papers, cultural origin, or historical context) in your pull request description.  

⚠️ **We do not accept anonymous frequency lists without provenance.**

---

## 🔄 Git Workflow

This project follows a **branch + pull request workflow** to keep contributions clear and reviewable.

### 1. Create a Branch
- Use a descriptive branch name:
  - `feature/short-description` → for new features  
  - `bugfix/short-description` → for bug fixes  
  - `docs/short-description` → for documentation updates  
- Example:
  ```bash
  git checkout -b feature/amplitude-modulation
  ```

### 2. Commit Changes
- Make small, meaningful commits with clear messages.
- Use **conventional commit style** for clarity:
  - `feat:` → a new feature (e.g., `feat: add AM carrier option`)  
  - `fix:` → a bug fix (e.g., `fix: correct WAV metadata tags`)  
  - `docs:` → documentation changes (e.g., `docs: update USAGE.md with duration flag`)  
  - `refactor:` → code refactoring without behavior change  
  - `test:` → add or update tests  
  - `chore:` → maintenance tasks, dependencies, cleanup  

- Example:
  ```bash
  git commit -m "feat: add AM carrier option to CLI"
  ```

### 3. Push and Open a Pull Request
- Push your branch to your fork:
  ```bash
  git push origin feature/amplitude-modulation
  ```
- Open a Pull Request (PR) against the `main` branch of this repo.
- The **Pull Request Template** will load automatically.

### 4. Reviews and Merging
- A maintainer will review your PR.  
- Requested changes (if any) can be pushed to the same branch.  
- Once approved, it will be merged into `main`.  

✅ For more details, see the [pull request template](../pull_request_template.md) and [issue templates](../ISSUE_TEMPLATE).

---

## ⚠️ Safety Reminder

This project is intended for **research and educational purposes only**.  
All contributors must:
- Avoid presenting frequencies as medical advice.  
- Clearly state whether additions are **scientific (peer-reviewed)** or **esoteric (symbolic/cultural)**.  
- Respect the principle of **informed transparency** for users.  

---

## 🌟 Community

By contributing, you help ensure this project remains:
- Transparent  
- Open-source  
- Safe for experimentation  
- Well-documented for researchers, hobbyists, and learners alike  

Thank you for helping build a responsible and informative PEMF audio toolkit!

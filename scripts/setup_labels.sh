#!/usr/bin/env bash
# Script to set up GitHub labels for PEMF Audio Generator
# Requires GitHub CLI: https://cli.github.com/

set -euo pipefail

OWNER="chrisjatlas"
REPO="pemf-audio-generator"

labels=(
  "roadmap|#0366d6|Issues related to the roadmap"
  "phase:1|#bfdadc|Phase 1 – Research & Documentation"
  "phase:2|#bfdadc|Phase 2 – Testing Framework"
  "phase:3|#bfdadc|Phase 3 – Benchmarking & Comparative Study"
  "phase:4|#bfdadc|Phase 4 – Validation & Refinement"
  "phase:5|#bfdadc|Phase 5 – Release & Ongoing Development"
)

for entry in "${labels[@]}"; do
  name="${entry%%|*}"
  rest="${entry#*|}"
  color="${rest%%|*}"
  desc="${rest#*|}"
  echo "Creating label: $name"
  gh label create "$name" --color "$color" --description "$desc" --repo "$OWNER/$REPO" || true
done

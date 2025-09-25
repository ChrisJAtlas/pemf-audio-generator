#!/usr/bin/env bash
# Script to set up GitHub milestones for PEMF Audio Generator

set -euo pipefail

OWNER="chrisjatlas"
REPO="pemf-audio-generator"

phases=(
  "Phase 1 – Research & Documentation|Build a reliable foundation of knowledge: frequency cataloging, provenance, metadata."
  "Phase 2 – Testing Framework|Software validation (analysis tools) + hardware validation (Linux-compatible measurement)."
  "Phase 3 – Benchmarking & Comparative Study|Survey theoretical/practical literature, industry practices, consumer/DIY approaches."
  "Phase 4 – Validation & Refinement|Integrate validated techniques, formalize test methodology, refine docs for release."
  "Phase 5 – Release & Ongoing Development|Initial public release, add new categories, iterate tests, maintain transparency."
)

for entry in "${phases[@]}"; do
  title="${entry%%|*}"
  desc="${entry#*|}"
  echo "Creating milestone: $title"
  gh api repos/$OWNER/$REPO/milestones -f title="$title" -f state="open" -f description="$desc"
done

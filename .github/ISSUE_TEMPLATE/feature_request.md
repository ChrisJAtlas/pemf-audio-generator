name: ✨ Feature Request
description: Suggest a new feature or improvement for the PEMF Audio Generator
title: "Feature: "
labels: [enhancement]
assignees: []

body:
  - type: markdown
    attributes:
      value: |
        Thanks for suggesting a new feature 🙏  
        Please check the [Roadmap](../../issues/1) before submitting, in case it’s already planned.

  - type: textarea
    id: description
    attributes:
      label: Feature Description
      description: What do you want to see added?
      placeholder: "e.g., Add ability to export audio to MP3 format..."
    validations:
      required: true

  - type: textarea
    id: motivation
    attributes:
      label: Motivation
      description: Why would this feature be useful? Who benefits from it?
      placeholder: "e.g., MP3 support makes playback easier on portable devices."
    validations:
      required: true

  - type: textarea
    id: details
    attributes:
      label: Additional Context
      description: Add any other details, references, or screenshots.
      placeholder: "e.g., Similar feature exists in Project XYZ..."
    validations:
      required: false

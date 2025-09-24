name: 💬 Feedback on Documentation / Project
description: Share your thoughts, suggestions, or concerns about the PEMF Audio Generator project.
title: "Feedback: "
labels: [feedback]
assignees: []

body:
  - type: markdown
    attributes:
      value: |
        Thanks for taking the time to provide feedback 🙏  
        This project is in an early documentation-first stage, so your input is especially valuable.

  - type: dropdown
    id: area
    attributes:
      label: Area of Feedback
      description: Which part of the project are you giving feedback on?
      options:
        - README / Overview
        - HISTORY.md
        - CATEGORIES.md
        - REFERENCES.md
        - USAGE.md
        - CONTRIBUTING.md
        - Roadmap / Projects
        - Other
    validations:
      required: true

  - type: textarea
    id: clarity
    attributes:
      label: Clarity & Readability
      description: Was the documentation clear and easy to understand? What could be improved?
      placeholder: "e.g., The USAGE guide was unclear on CSV format..."
    validations:
      required: false

  - type: textarea
    id: suggestions
    attributes:
      label: Suggestions or Additions
      description: Do you have ideas for new features, frequency categories, or safety notes?
      placeholder: "e.g., Consider adding more detail about Schumann resonance use cases..."
    validations:
      required: false

  - type: textarea
    id: concerns
    attributes:
      label: Concerns or Risks
      description: Do you see any safety, clarity, or ethical issues with the project as written?
      placeholder: "e.g., Disclaimer could be stronger around health-related claims."
    validations:
      required: false

  - type: checkboxes
    id: confirmation
    attributes:
      label: Confirmation
      description: Please confirm the following:
      options:
        - label: I understand this project is for research and educational purposes only.
          required: true

name: 🐛 Bug Report
description: Report an issue with the PEMF Audio Generator code or documentation
title: "Bug: "
labels: [bug]
assignees: []

body:
  - type: markdown
    attributes:
      value: |
        Thanks for reporting a bug 🙏  
        Please provide as much detail as possible so we can reproduce it.

  - type: textarea
    id: description
    attributes:
      label: Describe the bug
      description: What happened? What did you expect to happen?
      placeholder: "e.g., Running pemfgen with --duration fails with ValueError..."
    validations:
      required: true

  - type: textarea
    id: steps
    attributes:
      label: Steps to Reproduce
      description: Provide the steps so we can reproduce the issue.
      placeholder: |
        1. Run command '...'
        2. With this input '...'
        3. See error '...'
    validations:
      required: true

  - type: textarea
    id: logs
    attributes:
      label: Logs / Error Output
      description: Paste any error messages or logs here.
      render: shell
    validations:
      required: false

  - type: input
    id: version
    attributes:
      label: Version Info
      description: Which Python version / OS are you using?
      placeholder: "e.g., Python 3.11 on Windows 11"
    validations:
      required: false

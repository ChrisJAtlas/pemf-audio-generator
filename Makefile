# ---- Config ----
PYTHON := python
PIP    := $(PYTHON) -m pip
VENV   := .venv
VENVPY := $(VENV)/bin/python
CLI    := $(VENVPY) -m pemf_gen.cli

# Default output dir
OUT    := tracks

# ---- Targets ----
.PHONY: all venv install build build-am build-csv clean distclean help

all: build ## Build ALL categories (sine)

help: ## Show help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-16s\033[0m %s\n", $$1, $$2}'

venv: ## Create virtual environment
	$(PYTHON) -m venv $(VENV)
	$(VENVPY) -m pip install --upgrade pip

install: venv ## Install this package (editable) + deps
	$(PIP) install -e .
	$(PIP) install -r requirements.txt

build: ## Build ALL categories (sine) -> tracks/
	$(CLI) --category all -o $(OUT)

build-am: ## Build ALL categories with AM carrier 200 Hz
	$(CLI) --category all -o $(OUT) --am --carrier 200 --depth 0.9

# Usage: make build-csv CSV=library.csv
build-csv: ## Build ALL + merge rows from CSV=path/to.csv
ifndef CSV
	$(error Please provide CSV=path/to/your.csv)
endif
	$(CLI) --category all -o $(OUT) --csv $(CSV)

clean: ## Remove generated tracks only
	rm -rf $(OUT)

distclean: clean ## Remove venv too
	rm -rf $(VENV)
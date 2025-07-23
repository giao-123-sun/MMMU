# MMMU Virtual Environment Setup

This document explains how to use the virtual environment set up for the MMMU repository.

## Activating the Virtual Environment

To activate the virtual environment, run:

```bash
source mmmu_venv/bin/activate
```

Or use the provided activation script:

```bash
./activate_venv.sh
```

## Running Evaluations

We've created a convenient script to run evaluations:

```bash
./run_evaluation.sh [mmmu|mmmu-pro] [additional arguments]
```

### Examples:

1. Run MMMU evaluation:
```bash
./run_evaluation.sh mmmu --output_path /path/to/model/output.json --answer_path /path/to/answers.json
```

2. Run MMMU-Pro evaluation:
```bash
./run_evaluation.sh mmmu-pro
```

## Installed Packages

The virtual environment includes the following packages:
- torch
- transformers
- datasets
- pandas
- numpy
- pillow
- openai
- pyyaml
- tabulate
- and their dependencies

## Adding More Packages

If you need to install additional packages, activate the virtual environment first and then use pip:

```bash
source mmmu_venv/bin/activate
pip install package-name
```

Or use the activation script:

```bash
./activate_venv.sh pip install package-name
```
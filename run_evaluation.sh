#!/bin/bash
# Script to run MMMU evaluation

# Activate the virtual environment
source /workspace/MMMU/mmmu_venv/bin/activate

# Create necessary directories if they don't exist
mkdir -p mmmu-pro/output

# Print information
echo "Running MMMU evaluation..."
echo "Python interpreter: $(which python)"
echo "Python version: $(python --version)"

# Check which evaluation to run
if [ "$1" == "mmmu" ]; then
    echo "Running MMMU evaluation..."
    python mmmu/main_eval_only.py "$@"
elif [ "$1" == "mmmu-pro" ]; then
    echo "Running MMMU-Pro evaluation..."
    cd mmmu-pro
    python evaluate.py "$@"
    cd ..
else
    echo "Usage: ./run_evaluation.sh [mmmu|mmmu-pro] [additional arguments]"
    echo ""
    echo "Examples:"
    echo "  ./run_evaluation.sh mmmu --help"
    echo "  ./run_evaluation.sh mmmu-pro --help"
fi
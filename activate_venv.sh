#!/bin/bash
# Script to activate the virtual environment for MMMU

# Activate the virtual environment
source /workspace/MMMU/mmmu_venv/bin/activate

# Print confirmation message
echo "Virtual environment activated. You can now run MMMU evaluation scripts."
echo "Python interpreter: $(which python)"
echo "Python version: $(python --version)"

# Execute any additional command passed to this script
if [ $# -gt 0 ]; then
    echo "Executing command: $@"
    "$@"
fi
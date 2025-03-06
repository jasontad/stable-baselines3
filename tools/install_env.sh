#!/bin/bash

# Set environment name
ENV_NAME="stable-baselines3"

# Create a new conda environment with Python 3.9 (change if needed)
echo "Creating conda environment: $ENV_NAME"
conda create -y -n $ENV_NAME python=3.9

# Activate the environment
echo "Activating environment: $ENV_NAME"
source "$(conda info --base)/etc/profile.d/conda.sh"
conda activate $ENV_NAME

# Install dependencies from requirements.txt
echo "Installing dependencies..."
pip install --upgrade pip
pip install -r requirements.txt

echo "Installation complete! To activate the environment, use:"
echo "conda activate $ENV_NAME"

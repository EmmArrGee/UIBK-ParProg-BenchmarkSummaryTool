#!/bin/bash

VENV_DIR="venv"

# Check if venv directory exists
if [ ! -d "$VENV_DIR" ]; then
    echo "Creating virtual environment..."
    python3 -m venv "$VENV_DIR"
fi

# Activate the virtual environment
source "$VENV_DIR/bin/activate"

# Install dependencies from requirements.txt
echo "Installing dependencies..."
pip install -r requirements.txt

echo "Setup complete!"

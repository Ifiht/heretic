#!/bin/bash

set -e

echo "Building and installing Heretic locally..."

cd "$(dirname "$0")"

if ! command -v python3 &> /dev/null; then
    echo "Error: python3 not found"
    exit 1
fi

echo "Installing Heretic in editable mode..."
pip install -e .

echo ""
echo "Heretic installed successfully!"
echo "You can now run: heretic --help"

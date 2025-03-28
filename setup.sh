#!/bin/bash
set -e

echo "==== AMAZON REVIEW FRAMEWORK SETUP ===="

# Create framework directory if it doesn't exist
mkdir -p framework

# Copy all JSON files from NEW-SYSTEM to framework directory
echo "Copying framework files..."
cp NEW-SYSTEM/*.json framework/

# Install Python dependencies
echo "Installing Python dependencies..."
pip install -r requirements.txt

echo "==== SETUP COMPLETE ===="
echo "You can now run the application with: uvicorn app:app --reload"
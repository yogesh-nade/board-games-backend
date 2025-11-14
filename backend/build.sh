#!/bin/bash
# Render Build Script

echo "Starting build process..."
echo "Python version: $(python --version)"
echo "Pip version: $(pip --version)"

# Install dependencies
echo "Installing dependencies..."
pip install --upgrade pip
pip install -r requirements.txt

# Collect static files
echo "Collecting static files..."
python manage.py collectstatic --noinput

echo "Build completed successfully!"
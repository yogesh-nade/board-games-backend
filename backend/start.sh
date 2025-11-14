#!/bin/bash
# Start script for Render deployment

echo "Starting Django application..."

# Run database migrations automatically
echo "Running database migrations..."
python manage.py migrate --noinput

# Create default superuser
echo "Creating default superuser..."
python manage.py create_default_superuser

# Collect static files
echo "Collecting static files..."
python manage.py collectstatic --noinput

echo "Using command: gunicorn board_games.wsgi:application"

# Start the gunicorn server with correct spelling
gunicorn board_games.wsgi:application --bind 0.0.0.0:$PORT
#!/bin/bash
# Start script for Render deployment

echo "Starting Django application..."
echo "Using command: gunicorn board_games.wsgi:application"

# Start the gunicorn server with correct spelling
gunicorn board_games.wsgi:application --bind 0.0.0.0:$PORT
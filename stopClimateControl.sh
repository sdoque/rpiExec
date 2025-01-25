#!/bin/bash

# Function to stop a screen session
stop_screen_session() {
    local app_name=$1

    echo "Stopping $app_name..."
    screen -S "$app_name" -X quit 2>/dev/null

    # Check if the session was successfully terminated
    if screen -ls | grep -q "\b$app_name\b"; then
        echo "Failed to stop $app_name."
    else
        echo "$app_name stopped successfully."
    fi
}

# List of screen session names
screen_sessions=("ca" "sr" "or" "ds" "th" "kg" "ph")

# Stop each screen session
for session in "${screen_sessions[@]}"; do
    stop_screen_session "$session"
done

echo "All specified screen sessions have been stopped."

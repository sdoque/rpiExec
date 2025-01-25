#!/bin/bash

# Function to start an application in a screen session
start_screen_session() {
    local app_name=$1
    local app_dir=$2
    local executable=$3

    echo "Starting $app_name..."
    cd "$app_dir" || exit 1
    screen -dmS "$app_name" bash -c "./$executable; exec bash"
}

# Base directory for applications
BASE_DIR=~/rpiExec

# Start each application
start_screen_session "ca" "$BASE_DIR/ca" "ca_rpi64"
sleep 1  # Wait for Certificate Authority to initialize
start_screen_session "sr" "$BASE_DIR/esr" "esr_rpi64"
start_screen_session "or" "$BASE_DIR/orchestrator" "orchestrator_rpi64"
start_screen_session "ds" "$BASE_DIR/ds18b20" "ds18b20_rpi64"
start_screen_session "th" "$BASE_DIR/thermostat" "thermostat_rpi64"
start_screen_session "kg" "$BASE_DIR/kgrapher" "kgrapher_rpi64"
start_screen_session "ph" "$BASE_DIR/photographer" "photographer_rpi64"

echo "All applications have been started in separate screen sessions."

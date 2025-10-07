#!/bin/bash

SESSION="demo"

# CA in pane 0.2
tmux send-keys -t $SESSION:0.2 'cd ~/rpiExec/ca && ./ca_rpi64' C-m

# ⏱️ Half-second delay
sleep 0.5

# ESR in pane 0.0
tmux send-keys -t $SESSION:0.0 'cd ~/rpiExec/esr && ./esr_rpi64' C-m

# Orchestrator in pane 0.3
tmux send-keys -t $SESSION:0.3 'cd ~/rpiExec/orchestrator && ./orchestrator_rpi64' C-m

# ds18b20 in pane 0.4
tmux send-keys -t $SESSION:0.4 'cd ~/rpiExec/ds18b20 && ./ds18b20_rpi64' C-m

# Parallax in pane 0.5
tmux send-keys -t $SESSION:0.5 'cd ~/rpiExec/parallax && sudo ./parallax_rpi64' C-m

# Thermostat in pane 0.6
tmux send-keys -t $SESSION:0.6 'cd ~/rpiExec/thermostat && ./thermostat_rpi64' C-m

# Select workspace (pane 0.1) for manual interaction
tmux select-pane -t $SESSION:0.1

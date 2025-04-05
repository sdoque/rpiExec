#!/bin/bash

SESSION="demo"

# Stop all panes except your workspace (0.1)
tmux send-keys -t $SESSION:0.0 C-c
tmux send-keys -t $SESSION:0.2 C-c
tmux send-keys -t $SESSION:0.3 C-c
tmux send-keys -t $SESSION:0.4 C-c
tmux send-keys -t $SESSION:0.5 C-c
tmux send-keys -t $SESSION:0.6 C-c

# Optional: kill session completely
sleep 4
tmux kill-session -t $SESSION

echo "Demo stopped and tmux session closed."

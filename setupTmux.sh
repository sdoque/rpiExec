#!/bin/bash

SESSION="demo"

# Kill any existing session
tmux kill-session -t $SESSION 2>/dev/null

# Start session with the esr pane (top-left)
tmux new-session -d -s $SESSION -n demo

# Split vertically: workspace below esr (left column)
tmux split-window -h -t $SESSION:0.0  # Left and  right side

# Split the left column in two
tmux split-window -v -t $SESSION:0.0  # pane 0 and 1 on the left side of the screen

# Now split that right column into 4 vertical panes
tmux split-window -v -t $SESSION:0.2  # pane 2 and 3 on the right side
tmux split-window -v -t $SESSION:0.3  # pane 2, 3 and 4 on the right side
tmux split-window -v -t $SESSION:0.4  # pane 2, 3, 4 and 5 on the right side
tmux split-window -v -t $SESSION:0.2  # pane 2, 3, 4, 5 and 6 right side 

# (At this point: 0.0 + 0.1 left; 0.2 to 0.6 right)
# Pane 0.1 (workspace) is left empty for you
tmux select-pane -t $SESSION:0.1

# Rearrange for readability (optional)
#tmux select-layout -t $SESSION:0 tiled

# Attach to the session
tmux attach-session -t $SESSION

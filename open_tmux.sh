#!/bin/bash

# Get the name of the current directory as the session name
session_name=$(basename "$PWD")

# Start a new tmux session with the session name and detach
tmux new-session -d -s "$session_name"

# Window 1: Navigation
tmux rename-window -t "$session_name:0" 'Navigation'

# Window 2: Git operations
tmux new-window -t "$session_name:1" -n 'Git'
tmux send-keys -t "$session_name:1" 'clear' C-m

# Window 3: Neovim
tmux new-window -t "$session_name:2" -n 'Neovim'
tmux send-keys -t "$session_name:2" 'nvim' C-m

# Window 4: Scripts
tmux new-window -t "$session_name:3" -n 'Scripts'
tmux send-keys -t "$session_name:3" 'clear' C-m

# Attach to the session
tmux attach -t "$session_name"


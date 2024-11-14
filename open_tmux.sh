#!/bin/bash

# Get the name of the current directory as the session name
session_name=$(basename "$PWD")

# Start a new tmux session with the session name and detach
tmux new-session -d -s "$session_name"

# Window 1: htop in the home directory
tmux rename-window -t "$session_name:0" 'htop'
tmux send-keys -t "$session_name:0" 'cd ~ && htop' C-m

# Window 2: Navigation
tmux new-window -t "$session_name:1" -n 'Navigation'

# Window 3: Git operations
tmux new-window -t "$session_name:2" -n 'Git'
tmux send-keys -t "$session_name:2" 'clear' C-m

# Window 4: Neovim
tmux new-window -t "$session_name:3" -n 'Neovim'
tmux send-keys -t "$session_name:3" 'nvim' C-m

# Window 5: Scripts
tmux new-window -t "$session_name:4" -n 'Scripts'
tmux send-keys -t "$session_name:4" 'clear' C-m

# Attach to the session
tmux attach -t "$session_name"


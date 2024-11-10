#!/bin/bash

# Define the alias line
alias_line="alias dodev='~/custom_scripts/open_tmux.sh'"

# Check if the alias is already in .zshrc to avoid duplicates
if ! grep -Fxq "$alias_line" ~/.zshrc; then
    # Append the alias to .zshrc
    echo "$alias_line" >> ~/.zshrc
    echo "Alias added to ~/.zshrc. Reloading .zshrc..."
    # Reload .zshrc
    source ~/.zshrc
else
    echo "Alias already exists in ~/.zshrc."
fi


# Reload .zshrc
source ~/.zshrc

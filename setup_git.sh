#!/bin/bash

# Install Git
sudo apt install git

# Install GitHub CLI
sudo apt install gh

# Authenticate into GitHub
gh auth login

# Add SSH to GitHub
ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519 -N "" -q
gh ssh-key add ~/.ssh/id_ed25519.pub --title "$(hostname) - $(date)"

# Check SSH connection
ssh -T git@github.com

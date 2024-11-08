#!/bin/bash

# Download the latest Google Chrome .deb package
wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

# Install the package
sudo apt install -y ./google-chrome-stable_current_amd64.deb

# Remove the downloaded .deb file
rm google-chrome-stable_current_amd64.deb

echo "Google Chrome has been installed successfully."

cd

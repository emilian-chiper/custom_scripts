#!/bin/bash

# Install curl if not already installed
sudo apt install -y curl

# Download Brave's keyring and add it to the system
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

# Add Brave's repository to the sources list
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list > /dev/null

# Update package list
sudo apt update

# Install Brave browser
sudo apt install -y brave-browser

echo "Brave Browser has been installed successfully."


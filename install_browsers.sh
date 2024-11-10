#!/bin/bash

:'
Install BRAVE browser
'
# Download Brave's keyring and add it to the system
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

# Add Brave's repository to the sources list
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list > /dev/null

# Update package list
sudo apt update

# Install Brave browser
sudo apt install -y brave-browser

# Exit
echo "Brave Browser has been installed successfully."

:'
Install GOOGLE CHROME
'
# Download the latest Google Chrome .deb package
wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

# Install the package
sudo apt install -y ./google-chrome-stable_current_amd64.deb

# Remove the downloaded .deb file
rm google-chrome-stable_current_amd64.deb

# Exit
echo "Google Chrome has been installed successfully."


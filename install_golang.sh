#!/bin/bash

# Remove previous Go versions
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.23.3.linux-amd64.tar.gz

# Download golang
curl -O https://go.dev/dl/go1.23.3.linux-amd64.tar.gz

# Extract and move into golang
sudo tar -C /usr/local -xvf go1.23.3.linux-amd64.tar.gz

# Add Go to PATH
echo "export PATH=\$PATH:/usr/local/go/bin" >> ~/.profile
source ~/.profile

# Return home
cd


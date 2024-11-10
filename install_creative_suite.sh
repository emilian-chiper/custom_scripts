#!/bin/bash

:"
Installs the following packages:
- GIMP 2.10.38
- Kdenlive 24.08.2
- Krita 5.2.6
- Obsidian 1.7.5
- Blender 4.2.3
"

# Install GIMP
echo "Installing GIMP ..."
flatpak install flathub org.gimp.GIMP
echo "GIMP successfully installed"

# Install Kdenlive
echo "Installing Kdenlive ..."
flatpak install flathub org.kde.kdenlive
echo "Kdenlive successfully installed"

# Install Krita
echo "Installing Krita ..."
flatpak install flathub org.kde.krita
echo "Krita successfully installed"

# Install Obsidian
echo "Installing Obsidian ..."
flatpak install flathub md.obsidian.Obsidian

# Set Blender version and download URL
BLENDER_VERSION="4.2.3"
BLENDER_URL="https://download.blender.org/release/Blender4.2/blender-4.2.3-linux-x64.tar.xz"

# Download location and installation directories
DOWNLOAD_DIR="/tmp"
INSTALL_DIR="/usr/local/blender-${BLENDER_VERSION}"

# Download Blender
echo "Downloading Blender ${BLENDER_VERSION}..."
wget -q -O "${DOWNLOAD_DIR}/blender-${BLENDER_VERSION}.tar.xz" "${BLENDER_URL}"

# Extract Blender to /usr/local
echo "Installing Blender to ${INSTALL_DIR}..."
mkdir -p "${INSTALL_DIR}"
tar -xf "${DOWNLOAD_DIR}/blender-${BLENDER_VERSION}.tar.xz" -C "${INSTALL_DIR}" --strip-components=1

# Create a symbolic link for easy access
echo "Creating a symbolic link in /usr/local/bin..."
ln -sf "${INSTALL_DIR}/blender" /usr/local/bin/blender

# Clean up
rm "${DOWNLOAD_DIR}/blender-${BLENDER_VERSION}.tar.xz"

echo "Blender ${BLENDER_VERSION} installed successfully! You can run it by typing 'blender'."


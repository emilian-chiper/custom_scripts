#!/bin/bash

:"
Cleans the installations of the following packages:
- GIMP
- Kdenlive
- Krita
- Obsidian
- Blender
"

:"
Uninstall Flatpak apps
"

# Uninstall GIMP
echo "Uninstalling GIMP ..."
flatpak uninstall --delete-data org.gimp.GIMP
echo "GIMP successfully uninstalled!"

# Uninstall Kdenlive
echo "Uninstalling Kdenlive ..."
flatpak uninstall --delete-data org.kde.kdenlive
echo "Kdenlive successfully uninstalled!"

# Uninstall Krita
echo "Uninstall Krita ..."
flatpak uninstall --delete-data org.kde.kdenlive
echo "Krita successfully uninstalled!"

# Uninstall Obsidian
echo "Uninstalling Obsidian ..."
flatpak uninstall --delete-data md.obsidian.Obsidian
echo "Obsidian successfully uninstalled"

:'
UNINSTALL BLENDER
'
# Set Blender version and installation directories
BLENDER_VERSION="4.2.3"
INSTALL_DIR="/usr/local/blender-${BLENDER_VERSION}"
DESKTOP_FILE_PATH="/usr/share/applications/blender.desktop"

# Remove the Blender installation directory
if [ -d "$INSTALL_DIR" ]; then
    echo "Removing Blender installation directory at $INSTALL_DIR..."
    sudo rm -rf "$INSTALL_DIR"
else
    echo "Blender installation directory not found at $INSTALL_DIR. Skipping removal."
fi

# Remove symbolic link from /usr/local/bin
if [ -L "/usr/local/bin/blender" ]; then
    echo "Removing symbolic link from /usr/local/bin..."
    sudo rm /usr/local/bin/blender
else
    echo "Blender symbolic link not found in /usr/local/bin. Skipping removal."
fi

# Print exit message
echo "Blender ${BLENDER_VERSION} has been uninstalled successfully."


#!/bin/bash

# Define the directory containing the scripts
SCRIPT_DIR="$HOME/custom_scripts"

# List of scripts to run sequentially
scripts=(
    "install_core_packages.sh"
    "setup_git.sh"
    "install_lua.sh"
    "install_luarocks.sh"
    "install_golang.sh"
    "install_n_node_js.sh"
    "install_neovim.sh"
    "install_browsers.sh"
    "clean_creative_suite.sh"
    "install_creative_suite.sh"
    "install_new_shell.sh"
    "grab_dotfiles.sh"
    "alias_tmux.sh"
    "utilities.sh"
    "install_gtk_theme.sh"
)

# Run each script in order
for script in "${scripts[@]}"; do
    echo "Running $script..."
    "$SCRIPT_DIR/$script"

    if [ $? -ne 0 ]; then
        echo "Error: $script failed to execute."
        exit 1
    fi
done

# Reboot the system at the end
echo "All scripts completed. Rebooting the system..."
sudo reboot


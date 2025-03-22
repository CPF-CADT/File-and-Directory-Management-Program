#!/bin/bash

# Define installation directory
install_dir="/opt/FDmanage"

# Create directories if not exist
sudo mkdir -p "$install_dir/function"

# Copy main script
sudo cp main.sh "$install_dir/"

# Copy function scripts
sudo cp function/*.sh "$install_dir/function/"

# Make all scripts executable
sudo chmod +x "$install_dir/"*.sh
sudo chmod +x "$install_dir/function/"*.sh

# Create symbolic link in /usr/local/bin to run globally
sudo ln -sf "$install_dir/main.sh" /usr/local/bin/FDmanage

echo "Installation complete! Run 'FDmanage' to start."

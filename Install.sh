#!/bin/bash

# Create directories
mkdir -p ~/bin ~/cegep ~/projets

# Install required software
sudo apt update
sudo apt install -y git vim gcc gdb python3 python3-pip python3-venv

# Copy dotfiles
cp ~/.bashrc ~/bashrc_backup
cp ~/.vimrc ~/vimrc_backup

# Let user know script is complete
echo "Setup completed. Please review your dotfiles and update them as needed."


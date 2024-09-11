
#!/bin/bash

# Step 1: Create directory structure
mkdir -p ~/bin ~/cegep ~/projets

# Step 2: Install required packages
sudo pacman -Syu
sudo pacman -S --noconfirm git vim gcc gdb python3 python3-pip python3-venv

# Step 3: Copy dotfiles to home and .conf directories
cp .bashrc ~/
cp .vimrc ~/
cp .gitconfig ~/


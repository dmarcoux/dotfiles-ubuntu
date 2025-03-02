#!/usr/bin/bash
# Setup Alacritty - https://alacritty.org/

# Install Alacritty
sudo apt install --assume-yes alacritty

# Set Alacritty as the default terminal emulator
sudo update-alternatives --set x-terminal-emulator /usr/bin/alacritty

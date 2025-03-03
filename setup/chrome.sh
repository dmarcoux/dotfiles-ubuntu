#!/usr/bin/bash
# Install Chrome - https://www.google.com/chrome/

# Download .deb file, install it, before removing it
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install --assume-yes ./google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

# Set Chrome as the default browser
xdg-settings set default-web-browser google-chrome.desktop

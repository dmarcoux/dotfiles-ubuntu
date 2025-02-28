#!/usr/bin/bash
# Install Ghostty - https://ghostty.org/

# Download .deb file (there is no official Ubuntu package for Ghostty)
curl --output ghostty.deb https://github.com/mkasberg/ghostty-ubuntu/releases/download/1.1.2-0-ppa1/ghostty_1.1.2-0.ppa1_amd64_24.10.deb

# Install .deb file, before removing it
sudo apt install ./ghostty.deb
rm ghostty.deb

#!/usr/bin/bash
# Setup GNOME Shell extensions - https://extensions.gnome.org/

# Install GNOME Shell extensions manager
sudo apt install --assume-yes gnome-shell-extension-manager

# Install GNOME Shell extensions CLI - https://github.com/essembeh/gnome-extensions-cli
pipx install gnome-extensions-cli --system-site-packages

# Turn off default GNOME Shell extensions provided by Ubuntu
gnome-extensions disable tiling-assistant@ubuntu.com
gnome-extensions disable ubuntu-appindicators@ubuntu.com
gnome-extensions disable ubuntu-dock@ubuntu.com
gnome-extensions disable ding@rastersoft.com

# Install GNOME Shell extensions
# Tile windows on a custom grid using only the keyboard - https://extensions.gnome.org/extension/4548/tactile/
gext install tactile@lundal.io 
# Tweak tool to customize GNOME Shell, change the behavior and disable UI elements - https://extensions.gnome.org/extension/3843/just-perfection/
gext install just-perfection-desktop@just-perfection
# Replace the top-panel workspace indicator with an i3-like workspaces bar - https://extensions.gnome.org/extension/5090/space-bar/
gext install space-bar@luchrioh
# Undecorate windows or in other words, remove title bar of a window. This can be toggled back if needed - https://extensions.gnome.org/extension/1208/undecorate/
gext install undecorate@sun.wxg@gmail.com
# Open windows on a specific workspace - https://extensions.gnome.org/extension/16/auto-move-windows/
gext install auto-move-windows@gnome-shell-extensions.gcampax.github.com

# Compile gsettings schemas in order to be able to set them
sudo cp ~/.local/share/gnome-shell/extensions/tactile@lundal.io/schemas/org.gnome.shell.extensions.tactile.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/just-perfection-desktop@just-perfection/schemas/org.gnome.shell.extensions.just-perfection.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/space-bar@luchrioh/schemas/org.gnome.shell.extensions.space-bar.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/auto-move-windows@gnome-shell-extensions.gcampax.github.com/schemas/org.gnome.shell.extensions.auto-move-windows.gschema.xml /usr/share/glib-2.0/schemas/
sudo glib-compile-schemas /usr/share/glib-2.0/schemas/

# Configure Tactile
# Use 3 columns with ratios of 25% | 50% | 25%
gsettings set org.gnome.shell.extensions.tactile col-0 1
gsettings set org.gnome.shell.extensions.tactile col-1 2
gsettings set org.gnome.shell.extensions.tactile col-2 1
gsettings set org.gnome.shell.extensions.tactile col-3 0
# Use 2 rows with ratios of 50% | 50%
gsettings set org.gnome.shell.extensions.tactile row-0 1
gsettings set org.gnome.shell.extensions.tactile row-1 1
# Do not have any gap between tiled windows
gsettings set org.gnome.shell.extensions.tactile gap-size 0

# Configure Just Perfection
# Almost completely disable animations when switching windows/workspaces
gsettings set org.gnome.shell.extensions.just-perfection animation 2
gsettings set org.gnome.shell.extensions.just-perfection dash-app-running true
gsettings set org.gnome.shell.extensions.just-perfection workspace true
gsettings set org.gnome.shell.extensions.just-perfection workspace-popup false
# Display the date and time on the right
gsettings set org.gnome.shell.extensions.just-perfection clock-menu true
gsettings set org.gnome.shell.extensions.just-perfection clock-menu-position 1

# Configure Space Bar
gsettings set org.gnome.shell.extensions.space-bar.behavior smart-workspace-names false
gsettings set org.gnome.shell.extensions.space-bar.behavior toggle-overview false
# Disable switching workspace with the mouse wheel when the cursor is on the top bar
gsettings set org.gnome.shell.extensions.space-bar.behavior scroll-wheel "disabled"
gsettings set org.gnome.shell.extensions.space-bar.shortcuts enable-activate-workspace-shortcuts false
gsettings set org.gnome.shell.extensions.space-bar.shortcuts enable-move-to-workspace-shortcuts true
gsettings set org.gnome.shell.extensions.space-bar.shortcuts open-menu "@as []"

# Configure Auto Move Windows
# List of applications and their assigned workspace
gsettings set org.gnome.shell.extensions.auto-move-windows application-list "['Alacritty.desktop:1', 'firefox.desktop:2', 'spotify.desktop:5']"

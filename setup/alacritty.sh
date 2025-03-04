# Setup Alacritty - https://alacritty.org/

# Install Alacritty
sudo apt-get install --assume-yes alacritty

# Set Alacritty as the default terminal emulator
sudo update-alternatives --set x-terminal-emulator /usr/bin/alacritty
gsettings set org.gnome.desktop.default-applications.terminal exec '/usr/bin/alacritty'

# Uninstall GNOME terminal (it comes by default with GNOME and I don't need it)
sudo apt-get remove --assume-yes gnome-terminal

# Setup Foot - https://codeberg.org/dnkl/foot

# Install Foot
sudo apt-get install --assume-yes foot

# Set Foot as the default terminal emulator
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/bin/foot 10
sudo update-alternatives --set x-terminal-emulator /usr/bin/foot
gsettings set org.gnome.desktop.default-applications.terminal exec '/usr/bin/foot'
dconf write /org/gnome/desktop/applications/terminal/exec "'/usr/bin/foot'"

# Fix issue where `xdg-open` and `gio open` fail with "Unable to find terminal required for application"
sudo ln --force --symbolic /usr/bin/foot /usr/bin/xdg-terminal-exec

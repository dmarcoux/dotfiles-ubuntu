# Setup Foot - https://codeberg.org/dnkl/foot

# Install Foot with Nix since the package in Ubuntu repositories is really outdated
nix profile install nixpkgs#foot

# Set Foot as the default terminal emulator
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /home/dany/.nix-profile/bin/foot 10
sudo update-alternatives --set x-terminal-emulator /home/dany/.nix-profile/bin/foot
gsettings set org.gnome.desktop.default-applications.terminal exec '/home/dany/.nix-profile/bin/foot'
dconf write /org/gnome/desktop/applications/terminal/exec "'/home/dany/.nix-profile/bin/foot'"

# TODO: Ubuntu 25.04
# Use `xdg-terminal-exec` to make changing default terminal easier. This would replace the line below, right?
#
# Fix issue where `xdg-open` and `gio open` fail with "Unable to find terminal required for application"
sudo ln --force --symbolic /home/dany/.nix-profile/bin/foot /usr/bin/xdg-terminal-exec

# Ensure foot.desktop is found by copying it over at one of the supported locations for .desktop files
cp --force ~/.nix-profile/share/applications/foot.desktop ~/.local/share/applications/foot.desktop
# Ensure foot.desktop works by using an absolute path for foot's binary and icon
sed -i "s|Exec=.*|Exec=/home/dany/.nix-profile/bin/foot|" ~/.local/share/applications/foot.desktop
sed -i "s|Icon=.*|Icon=/home/dany/.nix-profile/share/icons/hicolor/scalable/apps/foot.svg|" ~/.local/share/applications/foot.desktop
# Update the .desktop database
update-desktop-database ~/.local/share/applications/

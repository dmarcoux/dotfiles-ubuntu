# Install Nix - https://nixos.org/

# Use the Determinate Systems installer for Nix (https://github.com/DeterminateSystems/nix-installer)
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install

# TODO: How could I symlink the .desktop files of those packages installed via Nix? This link here didn't solve the issue: https://unix.stackexchange.com/questions/310666/nix-desktop-files
#       Should I limit the number of those packages? See the current list with `nix profile list`

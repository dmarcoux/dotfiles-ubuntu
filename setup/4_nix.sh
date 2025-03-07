# Install Nix - https://nixos.org/

# Use the Determinate Systems installer for Nix (https://github.com/DeterminateSystems/nix-installer)
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install

# TODO: Decide if `nix profile install nixpkgs#package_name` should be listed here or in separate scripts.
#       How could I symlink the .desktop files of those packages installed via Nix?
#       Should I limit the number of those packages? See the current list with `nix profile list`

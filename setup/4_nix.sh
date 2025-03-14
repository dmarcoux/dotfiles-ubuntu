# Install Nix - https://nixos.org/

# Check if Nix is already set up. In this case, nothing needs to be done.
if ! command -v nix 2>&1 >/dev/null
then
  # Use the Determinate Systems installer for Nix (https://github.com/DeterminateSystems/nix-installer)
  curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install

  # TODO: How could I symlink the .desktop files of those packages installed via Nix? This link here didn't solve the issue: https://unix.stackexchange.com/questions/310666/nix-desktop-files
  #       Should I limit the number of those packages? See the current list with `nix profile list`
fi

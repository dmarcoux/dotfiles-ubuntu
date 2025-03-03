#!/usr/bin/bash
# Install Nix - https://nixos.org/

# Use the Determinate Systems installer for Nix (https://github.com/DeterminateSystems/nix-installer)
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install

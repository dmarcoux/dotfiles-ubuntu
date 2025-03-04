#!/usr/bin/bash
# Setup homebrew - https://brew.sh/

echo "Installing homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Ensure homebrew and the CLIs it installed are available later when needed
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

echo "Installing all packages from Brewfile"
curl --output ~/Brewfile https://raw.githubusercontent.com/dmarcoux/dotfiles-ubuntu/refs/heads/main/Brewfile
brew bundle
rm ~/Brewfile

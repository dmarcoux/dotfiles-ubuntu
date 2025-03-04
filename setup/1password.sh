#!/usr/bin/bash
# Setup 1Password - https://1password.com/

# Download and install 1Password GUI/CLI.
wget https://downloads.1password.com/linux/debian/amd64/stable/1password-latest.deb &&
  wget https://downloads.1password.com/linux/debian/amd64/stable/1password-cli-amd64-latest.deb &&
  sudo apt install --assume-yes ./1password-latest.deb ./1password-cli-amd64-latest.deb &&
  rm 1password-latest.deb 1password-cli-amd64-latest.deb

echo "Enable 1Password SSH agent: https://developer.1password.com/docs/ssh/get-started/#step-3-turn-on-the-1password-ssh-agent"
echo "Sign Git commits with my SSH key: https://developer.1password.com/docs/ssh/git-commit-signing/"
echo "Configure the 1Password GUI and browser extensions to match the settings stored in my 1Password notes"

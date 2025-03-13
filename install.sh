# Boot script, only run this once

# Upgrade packages
sudo apt-get update --assume-yes > /dev/null
# Install git
sudo apt-get install --assume-yes git > /dev/null

echo "Cloning dotfiles..."
rm -rf ~/.local/share/chezmoi
git clone https://github.com/dmarcoux/dotfiles-ubuntu.git ~/.local/share/chezmoi > /dev/null

echo "Starting installation..."
# Source all setup scripts
for setup_script in ~/.local/share/chezmoi/setup/*.sh; do source $setup_script; done

echo "Setting up dotfiles with chezmoi"
rm -rf ~/.local/share/chezmoi
chezmoi init git@github.com:dmarcoux/dotfiles-ubuntu.git
ln --force --symbolic "$(dirname "$(chezmoi source-path)")/Brewfile" ~/Brewfile
brew bundle
chezmoi apply

# Set zsh as the default shell
chsh --shell /usr/bin/zsh

echo "The installation is now done."
gum confirm "Ready to reboot for all changes to take effect?" && sudo reboot

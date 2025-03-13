# Setup Neovim - https://neovim.io/
# We install Neovim via Homebrew, it's already in Brewfile.

# Symlink Neovim desktop file to /usr/share/applications to use Neovim as a default application when opening files
sudo ln --force --symbolic \
  "$(brew --cellar neovim)/$(brew list --versions neovim | cut --delimiter " " --fields 2)/share/applications/nvim.desktop" \
  /usr/share/applications/nvim.desktop

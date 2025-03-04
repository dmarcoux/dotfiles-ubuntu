# Install Neovim - https://neovim.io/

# Install Neovim via Homebrew
brew install neovim

# Symlink Neovim desktop file to /usr/share/applications to use Neovim as a default application when opening files
sudo ln --symbolic \
  "$(brew --cellar neovim)/$(brew list --versions neovim | cut --delimiter " " --fields 2)/share/applications/nvim.desktop" \
  /usr/share/applications/nvim.desktop

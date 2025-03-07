# Setup homebrew - https://brew.sh/

echo "Installing homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Ensure homebrew and the CLIs it installed are available later when needed
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

echo "Installing all packages from Brewfile"
curl --output ~/Brewfile https://raw.githubusercontent.com/dmarcoux/dotfiles-ubuntu/refs/heads/main/Brewfile
brew bundle
rm ~/Brewfile

echo "Adding /home/linuxbrew/.linuxbrew/bin/ to secure_path for sudo"
# Without this, root cannot use the CLIs intalled via homebrew. See https://github.com/orgs/Homebrew/discussions/3575
sudo visudo

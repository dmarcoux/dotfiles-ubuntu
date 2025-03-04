# Install development tools — anything which is generic, needed by other packages/apps/tools or doesn't need any specific setup

# Add repository for the latest Git stable versions
sudo add-apt-repository --yes ppa:git-core/ppa

# Refresh repositories
sudo apt-get update --assume-yes

# Update packages
sudo apt-get upgrade --assume-yes

# Install development tools
sudo apt-get install --assume-yes build-essential curl zsh git wl-clipboard pipx atool

#!/usr/bin/bash
# Install development tools — anything which is generic, needed by other packages/apps/tools or doesn't need any specific setup

# Add repository for the latest Git stable versions
sudo add-apt-repository ppa:git-core/ppa

# Refresh repositories
sudo apt update --assume-yes

# Update packages
sudo apt upgrade --assume-yes

# Install development tools
sudo apt install --assume-yes build-essential curl zsh git xsel pipx atool

# Install development tools — anything which is generic, needed by other packages/apps/tools or doesn't need any specific setup

# Add repository for the latest Git stable versions
sudo add-apt-repository --yes ppa:git-core/ppa

# Refresh repositories
sudo apt-get update --assume-yes

# Update packages
sudo apt-get upgrade --assume-yes

# Install development dependencies
sudo apt-get install --assume-yes build-essential autoconf m4 libwxgtk3.2-dev libwxgtk-webview3.2-dev libgl1-mesa-dev libglu1-mesa-dev libpng-dev libssh-dev unixodbc-dev xsltproc fop libxml2-utils libncurses-dev openjdk-11-jdk libpq-dev

# Install development tools
sudo apt-get install --assume-yes curl zsh git wl-clipboard pipx atool screen

# Install apt-file. With this, search for the package containing the files I am missing.
# This is often useful for software packages which are missing header files. Find their package with `apt-file search the/header/file.h`.
sudo apt-get install --assume-yes apt-file
sudo apt-file update

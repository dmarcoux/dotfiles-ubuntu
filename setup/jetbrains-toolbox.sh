# Setup JetBrains Toolbox - https://www.jetbrains.com/toolbox-app/

# Install dependencies
sudo apt-get install --assume-yes libfuse2 libxi6 libxrender1 libxtst6 mesa-utils libfontconfig libgtk-3-bin tar dbus-user-session

# Download JetBrains Toolbox archive and SHA-256 checksum
wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-2.5.4.38621.tar.gz
wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-2.5.4.38621.tar.gz.sha256

# Verify the archive
if sha256sum --check jetbrains-toolbox-2.5.4.38621.tar.gz.sha256; then
  # Extract archive
  aunpack jetbrains-toolbox-2.5.4.38621.tar.gz
  # Install JetBrains Toolbox
  ./jetbrains-toolbox-2.5.4.38621/jetbrains-toolbox
  # Remove files after installation
  rm -rf jetbrains-toolbox-2.5.4.38621 jetbrains-toolbox-2.5.4.38621.tar.gz jetbrains-toolbox-2.5.4.38621.tar.gz.sha256
else
  echo "Checksum verification failed..."
fi

# After installing JetBrains IDEs, symlink their binary to , which is in $PATH
# ln --symbolic ~/.local/share/JetBrains/Toolbox/apps/intellij-idea-ultimate/bin/idea ~/.local/bin/

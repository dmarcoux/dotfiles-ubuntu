# Install Obsidian - https://obsidian.md/

echo "Installing Obsidian"
wget https://github.com/obsidianmd/obsidian-releases/releases/download/v1.8.10/obsidian_1.8.10_amd64.deb --output-document obsidian.deb
sudo apt-get install --assume-yes ./obsidian.deb
rm obsidian.deb

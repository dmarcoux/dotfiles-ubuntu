# Install Mullvad VPN - https://mullvad.net

# Setup Mullvad repository
sudo curl -fsSLo /usr/share/keyrings/mullvad-keyring.asc https://repository.mullvad.net/deb/mullvad-keyring.asc
echo "deb [signed-by=/usr/share/keyrings/mullvad-keyring.asc arch=$( dpkg --print-architecture )] https://repository.mullvad.net/deb/stable $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/mullvad.list

# Refresh repositories
sudo apt-get update --assume-yes

# Install Mullvad VPN package
sudo apt-get install mullvad-vpn

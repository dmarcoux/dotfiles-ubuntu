# Install Spotify - https://spotify.com

# Add repository
curl -sS https://download.spotify.com/debian/pubkey_C85668DF69375001.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

# Refresh repositories
sudo apt-get update --assume-yes

# Install Spotify client
sudo apt-get install --assume-yes spotify-client

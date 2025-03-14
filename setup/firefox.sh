# Install Firefox
# Instructions from https://support.mozilla.org/en-US/kb/install-firefox-linux#w_install-firefox-deb-package-for-debian-based-distributions-recommended

# Create a directory to store APT repository keys if it doesn't exist
sudo install -d -m 0755 /etc/apt/keyrings

# Import the Mozilla APT repository signing key
wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | sudo tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null

# Check the key fingerprint
gpg -n -q --import --import-options import-show /etc/apt/keyrings/packages.mozilla.org.asc | awk '/pub/{getline; gsub(/^ +| +$/,""); if($0 == "35BAA0B33E9EB396F59CA838C0BA5CE6DC6315A3") print "\nThe key fingerprint matches ("$0").\n"; else print "\nVerification failed: the fingerprint ("$0") does not match the expected one.\n"}'

# Add the Mozilla APT repository
echo "deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt mozilla main" | sudo tee /etc/apt/sources.list.d/mozilla.list > /dev/null

# Configure APT to prioritize packages from the Mozilla repository
echo '
Package: *
Pin: origin packages.mozilla.org
Pin-Priority: 1000
' | sudo tee /etc/apt/preferences.d/mozilla

# Refresh repositories
sudo apt-get update --assume-yes

# Install Firefox (--allow-downgrades is needed due to the version number being smaller than the Snap package version)
sudo apt-get install --assume-yes --allow-downgrades firefox

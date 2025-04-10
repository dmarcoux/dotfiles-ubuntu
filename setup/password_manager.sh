# Setup 1Password (https://1password.com/) and Bitwarden (https://bitwarden.com/)

echo "Downloading and installing 1Password GUI/CLI"
wget https://downloads.1password.com/linux/debian/amd64/stable/1password-latest.deb
wget https://downloads.1password.com/linux/debian/amd64/stable/1password-cli-amd64-latest.deb
sudo apt-get install --assume-yes ./1password-latest.deb ./1password-cli-amd64-latest.deb
rm 1password-latest.deb 1password-cli-amd64-latest.deb

echo "Downloading and installing Bitwarden GUI"
wget "https://bitwarden.com/download/?app=desktop&platform=linux&variant=deb" --output-document bitwarden.deb
sudo apt-get install --assume-yes ./bitwarden.deb
rm bitwarden.deb

gum confirm "Enable 1Password SSH agent: https://developer.1password.com/docs/ssh/get-started/#step-3-turn-on-the-1password-ssh-agent. Done?"
gum confirm "Sign Git commits with my SSH key: https://developer.1password.com/docs/ssh/git-commit-signing/. Done?"
gum confirm "Configure the 1Password GUI and browser extensions to match the settings stored in my 1Password notes. Done?"

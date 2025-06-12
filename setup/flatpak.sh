# Install flatpak
sudo apt-get install --assume-yes flatpak

# Add flathub as source for flatpak apps
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Install Gradia, a screenshot annotation tool - https://flathub.org/apps/be.alexandervanhee.gradia
sudo flatpak install --assumeyes flathub be.alexandervanhee.gradia

# Install Bruno - https://www.usebruno.com/
sudo flatpak install flathub com.usebruno.Bruno

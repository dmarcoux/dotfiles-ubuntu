# Setup Nerd fonts - https://www.nerdfonts.com

# Create fonts directory
mkdir --parents ~/.local/share/fonts

# Download fonts
# DejaVuSansM Nerd Font, based on DejaVu Sans Mono
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/DejaVuSansMono.zip
unzip DejaVuSansMono.zip -d DejaVuSansMono
cp --force DejaVuSansMono/*.ttf ~/.local/share/fonts
rm -rf DejaVuSansMono.zip DejaVuSansMono

# Rebuild fonts cache
fc-cache

# Set DejaVuSansM Nerd Font as the default monospace font
gsettings set org.gnome.desktop.interface monospace-font-name 'DejaVuSansM Nerd Font 10'

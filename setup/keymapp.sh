# Setup Keymapp for ZSA keyboards - https://blog.zsa.io/keymapp/

# Install dependencies
sudo apt-get install --assume-yes libwebkit2gtk-4.1-0 libgtk-3-0 libusb-1.0-0

# Create udev rules for ZSA keyboards
sudo bash -c 'cat > /etc/udev/rules.d/50-zsa.rules << EOF
# Rules for Oryx web flashing and live training
KERNEL=="hidraw*", ATTRS{idVendor}=="16c0", MODE="0664", GROUP="plugdev"
KERNEL=="hidraw*", ATTRS{idVendor}=="3297", MODE="0664", GROUP="plugdev"

# Legacy rules for live training over webusb (Not needed for firmware v21+)
# Rule for all ZSA keyboards
SUBSYSTEM=="usb", ATTR{idVendor}=="3297", GROUP="plugdev"
# Rule for the Moonlander
SUBSYSTEM=="usb", ATTR{idVendor}=="3297", ATTR{idProduct}=="1969", GROUP="plugdev"
# Rule for the Ergodox EZ
SUBSYSTEM=="usb", ATTR{idVendor}=="feed", ATTR{idProduct}=="1307", GROUP="plugdev"
# Rule for the Planck EZ
SUBSYSTEM=="usb", ATTR{idVendor}=="feed", ATTR{idProduct}=="6060", GROUP="plugdev"

# Wally Flashing rules for the Ergodox EZ
ATTRS{idVendor}=="16c0", ATTRS{idProduct}=="04[789B]?", ENV{ID_MM_DEVICE_IGNORE}="1"
ATTRS{idVendor}=="16c0", ATTRS{idProduct}=="04[789A]?", ENV{MTP_NO_PROBE}="1"
SUBSYSTEMS=="usb", ATTRS{idVendor}=="16c0", ATTRS{idProduct}=="04[789ABCD]?", MODE:="0666"
KERNEL=="ttyACM*", ATTRS{idVendor}=="16c0", ATTRS{idProduct}=="04[789B]?", MODE:="0666"

# Keymapp / Wally Flashing rules for the Moonlander and Planck EZ
SUBSYSTEMS=="usb", ATTRS{idVendor}=="0483", ATTRS{idProduct}=="df11", MODE:="0666", SYMLINK+="stm32_dfu"
# Keymapp Flashing rules for the Voyager
SUBSYSTEMS=="usb", ATTRS{idVendor}=="3297", MODE:="0666", SYMLINK+="ignition_dfu"
EOF'

# Add my user to the plugdev group
sudo groupadd plugdev
sudo usermod -aG plugdev $USER

# Download and install Keymapp
wget https://oryx.nyc3.cdn.digitaloceanspaces.com/keymapp/keymapp-latest.tar.gz
tar xvf keymapp-latest.tar.gz
sudo install -m755 -D keymapp /usr/bin/keymapp
sudo install -Dm644 icon.png /usr/share/pixmaps/keymapp.png
rm keymapp-latest.tar.gz keymapp icon.png
sudo bash -c 'cat > /usr/share/applications/keymapp.desktop << EOF
[Desktop Entry]
Type=Application
Name=Keymapp
Exec=keymapp
Icon=keymapp
Terminal=false
Categories=Settings;HardwareSettings;
EOF'

# Update the .desktop database
sudo update-desktop-database /usr/share/applications

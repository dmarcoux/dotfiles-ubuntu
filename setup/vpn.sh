# Setup OpenConnect VPN in Network Manager

# Refresh repositories
sudo apt-get update --assume-yes

# Install packages for OpenConnect VPN in Network Manager
sudo apt-get install --assume-yes network-manager-openconnect network-manager-openconnect-gnome

gum confirm "Download your VPN files (certificates, keys, etc...) and put them under ~/downloads. Done, right?" &&
  echo "Moving VPN files to /etc/ssl/{certs,private}..." &&
  sudo chown root:root ~/downloads/*.{cer,crt,csr} &&
  sudo chmod 644 ~/downloads/*.{cer,crt,csr} &&
  sudo chown root:ssl-cert ~/downloads/*.key &&
  sudo chmod 640 ~/downloads/*.key &&
  sudo mv ~/downloads/*.{cer,crt,csr} /etc/ssl/certs/ &&
  sudo mv ~/downloads/*.key /etc/ssl/private/

# Setup connections in Network Manager as root since keys under /etc/ssl/private aren't accessible to a normal user
sudo nm-connection-editor

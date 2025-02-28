#!/usr/bin/bash
# Install Anytype - https://anytype.io/

# Download .deb file, install it, before removing it
curl --output anytype.deb https://anytype-release.fra1.cdn.digitaloceanspaces.com/anytype_0.45.3_amd64.deb 
sudo apt install ./anytype.deb
rm anytype.deb

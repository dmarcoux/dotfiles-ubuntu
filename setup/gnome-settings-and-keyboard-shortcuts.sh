# Setup GNOME settings and keyboard shortcuts

# Enable the night light feature to adjust the color temperature based on the time
gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true
gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-automatic false
gsettings set org.gnome.settings-daemon.plugins.color night-light-temperature 3700

# Show week number in the calendar
gsettings set org.gnome.desktop.calendar show-weekdate true

# Show date, seconds and week day in the clock from the top bar
gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.interface clock-show-seconds true
gsettings set org.gnome.desktop.interface clock-show-weekday true

# Show the battery percentage in the top bar
gsettings set org.gnome.desktop.interface show-battery-percentage true

# Enable the keyboard layouts: Canadian Multilingual (CSA), English US, and German
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'ca+multix'), ('xkb', 'us'), ('xkb', 'de')]"

# Use 5 workspaces instead of dynamic mode
gsettings set org.gnome.mutter dynamic-workspaces false
gsettings set org.gnome.desktop.wm.preferences num-workspaces 5
# Workspaces are on all monitors, not only on the primary
gsettings set org.gnome.mutter workspaces-only-on-primary false

# Remove keyboard shortcuts to switch to pinned dock applications
gsettings set org.gnome.shell.keybindings "switch-to-application-1" "[]"
gsettings set org.gnome.shell.keybindings "switch-to-application-2" "[]"
gsettings set org.gnome.shell.keybindings "switch-to-application-3" "[]"
gsettings set org.gnome.shell.keybindings "switch-to-application-4" "[]"
gsettings set org.gnome.shell.keybindings "switch-to-application-5" "[]"
gsettings set org.gnome.shell.keybindings "switch-to-application-6" "[]"
gsettings set org.gnome.shell.keybindings "switch-to-application-7" "[]"
gsettings set org.gnome.shell.keybindings "switch-to-application-8" "[]"
gsettings set org.gnome.shell.keybindings "switch-to-application-9" "[]"

# Switch to workspace 1-5 with Super + 1-5
gsettings set org.gnome.desktop.wm.keybindings "switch-to-workspace-1" "['<Super>1']"
gsettings set org.gnome.desktop.wm.keybindings "switch-to-workspace-2" "['<Super>2']"
gsettings set org.gnome.desktop.wm.keybindings "switch-to-workspace-3" "['<Super>3']"
gsettings set org.gnome.desktop.wm.keybindings "switch-to-workspace-4" "['<Super>4']"
gsettings set org.gnome.desktop.wm.keybindings "switch-to-workspace-5" "['<Super>5']"

# Close window with Super + W
gsettings set org.gnome.desktop.wm.keybindings close "['<Super>w']"

# Maximize window with Super + Up arrow
gsettings set org.gnome.desktop.wm.keybindings maximize "['<Super>Up']"

# Move window to workspace 1-5 with Super + Shift + 1-5
gsettings set org.gnome.desktop.wm.keybindings "move-to-workspace-1" "['<Super><Shift>1']"
gsettings set org.gnome.desktop.wm.keybindings "move-to-workspace-2" "['<Super><Shift>2']"
gsettings set org.gnome.desktop.wm.keybindings "move-to-workspace-3" "['<Super><Shift>3']"
gsettings set org.gnome.desktop.wm.keybindings "move-to-workspace-4" "['<Super><Shift>4']"
gsettings set org.gnome.desktop.wm.keybindings "move-to-workspace-5" "['<Super><Shift>5']"

# Lock screen and start screensaver with Super + Shift + C
gsettings set org.gnome.settings-daemon.plugins.media-keys screensaver "['<Super><Shift>c']"
# Launch a terminal instance with Super + Enter
gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "['<Super>Return']"

# Fix issue where mouse cursor isn't visible in terminal emulators, except for the built-in GNOME terminal emulators
mkdir --parents ~/.local/share/icons
cp --recursive /usr/share/icons/Adwaita ~/.local/share/icons/default

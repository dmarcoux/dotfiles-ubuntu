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
for i in {1..9}; do
    gsettings set org.gnome.shell.keybindings "switch-to-application-$i" "[]"
done

# Switch to workspace 1-5 with Super + 1-5
for i in {1..5}; do
    gsettings set org.gnome.desktop.wm.keybindings "switch-to-workspace-$i" "['<Super>$i']"
done

# Close window with Super + W
gsettings set org.gnome.desktop.wm.keybindings close "['<Super>w']"

# Maximize window with Super + Up arrow
gsettings set org.gnome.desktop.wm.keybindings maximize "['<Super>Up']"

# Move window to workspace 1-5 with Super + Shift + 1-5
for i in {1..5}; do
    gsettings set org.gnome.desktop.wm.keybindings "move-to-workspace-$i" "['<Super><Shift>$i']"
done

# Lock screen and start screensaver with Super + Shift + C
gsettings set org.gnome.settings-daemon.plugins.media-keys screensaver "['<Super><Shift>c']"
# Launch a terminal instance with Super + Enter
gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "['<Super>Return']"

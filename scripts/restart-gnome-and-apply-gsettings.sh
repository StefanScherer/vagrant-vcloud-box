#!/bin/bash

# autostart trick found at https://help.ubuntu.com/community/UbuntuLTSP/DisableScreenLock
cat <<DESKTOP | sudo tee /etc/xdg/autostart/set-gnome-settings.sh.desktop
[Desktop Entry]
Type=Application
Exec=/vagrant/scripts/set-gnome-settings.sh
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name=Apply Gnome Settings
Comment=Apply Gnome Settings at next restart
DESKTOP

sudo service lightdm restart

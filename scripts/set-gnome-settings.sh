#!/bin/bash

# lock favorites to launcher
gsettings set com.canonical.Unity.Launcher favorites "['application://ubiquity.desktop', 'application://nautilus.desktop', 'application://google-chrome.desktop', 'application://gnome-terminal.desktop', 'application://ubuntu-software-center.desktop', 'application://unity-control-center.desktop', 'unity://running-apps', 'unity://expo-icon', 'unity://devices']"

# set keyboard to german
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'de'), ('xkb', 'us')]"

# disable screen saver
gsettings set org.gnome.desktop.screensaver idle-activation-enabled false

# turn off lock screen
gsettings set org.gnome.desktop.screensaver lock-enabled false

# remove autostart after running this script once
sudo rm -f /etc/xdg/autostart/set-gnome-settings.sh.desktop

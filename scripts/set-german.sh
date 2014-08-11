#!/bin/bash

# switch to German keyboard layout in gnome desktop
dbus-launch --exit-with-session gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'de'), ('xkb', 'us')]"

# switch to German keyboard layout for console
#export DEBIAN_FRONTEND=noninteractive
#sudo sed -i 's/"us"/"de"/g' /etc/default/keyboard
#sudo apt-get install -y console-common
#sudo install-keymap de

# set timezone to German timezone
echo "Europe/Berlin" | sudo tee /etc/timezone
sudo dpkg-reconfigure -f noninteractive tzdata

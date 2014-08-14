#!/bin/bash

# turn off screen saver and lock
dbus-launch --exit-with-session gsettings set org.gnome.desktop.screensaver idle-activation-enabled false
dbus-launch --exit-with-session gsettings set org.gnome.desktop.screensaver lock-enabled false

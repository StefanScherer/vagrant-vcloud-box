#!/bin/bash

# turn off auto updates, found at http://www.garron.me/en/linux/turn-off-stop-ubuntu-automatic-update.html
sudo sed -i 's/APT::Periodic::Update-Package-Lists "1";/APT::Periodic::Update-Package-Lists "0";/g' /etc/apt/apt.conf.d/10periodic

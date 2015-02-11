#!/bin/bash
cd /tmp
if [ ! -f vagrant_1.7.2_x86_64.deb ]; then
  echo "Downloading Vagrant 1.7.2"
  wget -q https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.2_x86_64.deb
  echo "Installing Vagrant 1.7.2"
  sudo dpkg -i vagrant_1.7.2_x86_64.deb
  rm vagrant_1.7.2_x86_64.deb
fi

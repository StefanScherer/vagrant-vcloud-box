#!/bin/bash
sudo apt-get install -y git

# copy .gitconfig with user.name and user.email settings into box
if [ -f /vagrant/resources/.gitconfig ]; then
  if [ ! -f /home/vagrant/.gitconfig ]; then
    cp /vagrant/resources/.gitconfig /home/vagrant/.gitconfig
  fi
fi

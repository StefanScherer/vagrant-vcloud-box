#!/bin/bash

if [ ! -f "/home/vagrant/.ssh/id_rsa" ]; then
  if [ -f /vagrant/resources/.ssh/id_rsa ]; then
    echo "Installing SSH keys"
    cp /vagrant/resources/.ssh/* /home/vagrant/.ssh/
  fi
fi

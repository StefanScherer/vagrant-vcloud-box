#!/bin/bash

if [ -f /vagrant/resources/Vagrantfile ]; then
  if [ ! -d /home/vagrant/.vagrant.d ]; then
    mkdir /home/vagrant/.vagrant.d
  fi
  if [ ! -f /home/vagrant/.vagrant.d/Vagrantfile ]; then
    cp /vagrant/resources/Vagrantfile /home/vagrant/.vagrant.d/Vagrantfile
  fi
fi

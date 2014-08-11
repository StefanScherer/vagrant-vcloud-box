#!/bin/bash

if [ -f /vagrant/resources/.ssh/id_rsa ]; then
  if [ ! -d /home/vagrant/.ssh ]; then
    mkdir /home/vagrant/.ssh
  fi
  if [ ! -f /home/vagrant/.ssh/id_rsa ]; then
    cp /vagrant/resources/.ssh/* /home/vagrant/.ssh/
    chmod 400 /home/vagrant/.ssh/id_rsa
  fi
fi

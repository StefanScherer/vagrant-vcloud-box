#!/bin/bash

if [ -f /vagrant/resources/.ssh/id_rsa ]; then
  if [ ! -d /home/vagrant/.ssh ]; then
    mkdir /home/vagrant/.ssh
  fi
  if [ ! -f /home/vagrant/.ssh/id_rsa ]; then
    if [ -f /vagrant/resources/.ssh/id_rsa ]; then
      cp /vagrant/resources/.ssh/id_rsa /home/vagrant/.ssh/id_rsa
      chmod 400 /home/vagrant/.ssh/id_rsa
    fi
    if [ -f /vagrant/resources/.ssh/id_rsa.pub ]; then
      cp /vagrant/resources/.ssh/id_rsa.pub /home/vagrant/.ssh/id_rsa.pub
      chmod 540 /home/vagrant/.ssh/id_rsa.pub
    fi
    if [ -f /vagrant/resources/.ssh/known_hosts ]; then
      cp /vagrant/resources/.ssh/known_hosts /home/vagrant/.ssh/known_hosts
      chmod 540 /home/vagrant/.ssh/known_hosts
    fi
  fi
fi

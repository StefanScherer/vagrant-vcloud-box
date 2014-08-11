#!/bin/bash

if [ ! -d /home/vagrant/.vagrant.d ]; then
  mkdir /home/vagrant/.vagrant.d
fi
if [ ! -f /home/vagrant/.vagrant.d/Vagrantfile ]; then
  if [ -f /vagrant/resources/Vagrantfile ]; then
    cp /vagrant/resources/Vagrantfile /home/vagrant/.vagrant.d/Vagrantfile
  else
  	cat <<VAGRANTFILE >/home/vagrant/.vagrant.d/Vagrantfile
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  if Vagrant.has_plugin?("vagrant-vcloud")
    # vCloud Director provider settings
    config.vm.provider :vcloud do |vcloud|
      vcloud.hostname = "https://roecloud001"
      vcloud.username = "vagrant"
      vcloud.password = 'enter-vagrants-password-here'
      vcloud.org_name = "YOURORG"
      vcloud.vdc_name = "YOURORG-VDC"
      vcloud.catalog_name = "COM-BUILD-CATALOG"
      vcloud.ip_subnet = "172.16.32.125/255.255.255.240"
      vcloud.vdc_network_name = "YOURORG-INTERNAL"

      vcloud.vdc_edge_gateway = "YOURORG-EDGE"
      vcloud.vdc_edge_gateway_ip = "10.100.50.xx"
    end
  end
end
VAGRANTFILE
  fi
fi

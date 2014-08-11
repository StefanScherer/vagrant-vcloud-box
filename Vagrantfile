# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "box-cutter/ubuntu1404-desktop"
  config.vm.hostname = "vagrant-vcloud-box"

  config.vm.provision "shell", path: "scripts/disable-features.sh", privileged: false
  config.vm.provision "shell", path: "scripts/install-git.sh", privileged: false
  config.vm.provision "shell", path: "scripts/install-vagrant.sh", privileged: false
  config.vm.provision "shell", path: "scripts/install-vagrant-vcloud.sh", privileged: false
  config.vm.provision "shell", path: "scripts/install-vagrantfile.sh", privileged: false
  config.vm.provision "shell", path: "scripts/install-ssh-keys.sh", privileged: false
  config.vm.provision "shell", path: "scripts/install-node.sh", privileged: false
  config.vm.provision "shell", path: "scripts/install-rdesktop.sh", privileged: false
  config.vm.provision "shell", path: "scripts/install-chrome.sh", privileged: false

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.memory = 1024
    vb.cpus = 2
    vb.customize ["modifyvm", :id, "--vram", "256"]
    vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
    vb.customize ["setextradata", "global", "GUI/SuppressMessages", "all" ]
    vb.customize ["setextradata", "global", "GUI/MaxGuestResolution", "any"]
    vb.customize ["setextradata", :id, "CustomVideoMode1", "1024x768x32"]
    vb.customize ["modifyvm", :id, "--accelerate3d", "on"]
  end

  ["vmware_fusion", "vmware_workstation"].each do |provider|
    config.vm.provider provider do |v, override|
      v.gui = true
      v.vmx["memsize"] = "1024"
      v.vmx["numvcpus"] = "2"
      v.vmx["mks.enable3d"] = "TRUE"
    end
  end

  config.vm.provider "vcloud" do |vb|
    vb.memory = 1024
    vb.cpus = 2
  end
end

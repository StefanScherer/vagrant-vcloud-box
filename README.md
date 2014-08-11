vagrant-vcloud-box
==================

Ubuntu Desktop box with preinstalled Vagrant and vagrant-vcloud plugin
to have a working environment to connect to vCloud.

## Preparation

### SSH Keys

To clone private GitHub repos, you may place your SSH key here: 

```
resources/.ssh/id_rsa
resources/.ssh/id_rsa.pub
resources/.ssh/known_hosts
```

They will be copied into the box.

On a unix host, use the following commands to fill the resources with your SSH key from the host.

```bash
mkdir resources/.ssh
cp ~/.ssh/* resources/.ssh/
cp ~/.vagrant.d/Vagrantfile resources/
```

### Create a user vagrant in your vCloud org

It is strongly recommended to use another user than your normal Windows user account name to log into your vCloud from vagrant. Just to avoid entering your Windows password in this `Vagrantfile`.

So log into your vCloud org, go to Administration tab, then Users. Create an user `vagrant` there with local administration rights and a password.

### Global Vagrantfile

Your connection data into your vCloud org or other global Vagrant
settings could be placed in the following file:

```
resources/Vagrantfile
```

This file will be copied into `~/.vagrant.d/Vagrantfile` in the guest VM so that the `vagrant-vcloud` plugin can connect to your vCloud org from inside this VM.
Enter the user name and password of the newly created user of your vCloud org.

This file may look like this one:

```ruby
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  if Vagrant.has_plugin?("vagrant-vcloud")
    # vCloud Director provider settings
    config.vm.provider :vcloud do |vcloud|
      vcloud.hostname = "https://yourvcloudhost"
      vcloud.username = "vagrant"
      vcloud.password = "XXXXXXX"

      vcloud.org_name = "XX"
      vcloud.vdc_name = "XX-ORG"

      vcloud.catalog_name = "Vagrant"

      vcloud.vdc_network_name = "XX-INTERNAL"

      vcloud.vdc_edge_gateway = "XX-EDGE"
      vcloud.vdc_edge_gateway_ip = "10.100.XX.X"
    end
  end

end
```


## Installation

Just create the box

```
vagrant up
```

Then open a terminal and you may clone GitHub repos with Vagrantfiles ready to
rumble to your vCloud.

### Sample vCloud walktrough

Clone the following small sample repo to build a vCloud vApp with two Ubuntu boxes.

```bash
git clone https://github.com/StefanScherer/vcloud-scenarios.git
cd vcloud-scenarios
cd precise32
vagrant up --provider=vcloud
```

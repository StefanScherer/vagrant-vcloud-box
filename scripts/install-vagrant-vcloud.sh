#!/bin/bash
# vagrant plugin install vagrant-vcloud
echo "Installing Stefan's vagrant-vcloud 0.4.4 ..."
wget --no-verbose --no-check-certificate -O vagrant-vcloud-0.4.4.gem https://github.com/StefanScherer/vagrant-vcloud/releases/download/v0.4.4/vagrant-vcloud-0.4.4.gem
vagrant plugin install vagrant-vcloud-0.4.4.gem

# install vagrant dummy boxes for vcloud
wget https://github.com/StefanScherer/vcloud-scenarios/raw/master/dummy_box/dummy.box
DUMMYBOX=dummy.box
vagrant box add sles11sp3 $DUMMYBOX
vagrant box add ubuntu1204 $DUMMYBOX
vagrant box add ubuntu1204-100gb $DUMMYBOX
vagrant box add ubuntu1204-desktop $DUMMYBOX
vagrant box add ubuntu1404 $DUMMYBOX
vagrant box add ubuntu1404-desktop $DUMMYBOX
vagrant box add ubuntu1404-docker $DUMMYBOX
vagrant box add windows_2008_r2 $DUMMYBOX
vagrant box add windows_2008_r2-100gb $DUMMYBOX
vagrant box add windows_2012_r2 $DUMMYBOX
vagrant box add windows_2012_r2-100gb $DUMMYBOX
vagrant box add windows_7 $DUMMYBOX
vagrant box add windows_81 $DUMMYBOX
rm -f $DUMMYBOX

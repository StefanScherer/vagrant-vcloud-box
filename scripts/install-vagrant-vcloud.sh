#!/bin/bash
vagrant plugin install vagrant-vcloud

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

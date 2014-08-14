#!/bin/bash
vagrant plugin install vagrant-serverspec
vagrant up
vagrant provision --provision-with serverspec | grep -q 'examples, 0 failures' || exit 2
vagrant halt
vmx=`cat .vagrant/machines/default/vmware_fusion/id`
pwd=`pwd`
base=`basename $pwd`
ova="${base}.ova"
rm -r $ova
/Applications/VMware\ Fusion.app/Contents/Library/VMware\ OVF\ Tool/ovftool $vmx $ova
vagrant destroy -f

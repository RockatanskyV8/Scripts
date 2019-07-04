#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    $missing
fi

if [[ $osname == $debianstable ]]; then
    sudo apt install build-essential -y
    sudo apt install linux-headers-$(uname -r) -y
    sudo mkdir /tmp/vmware
    sudo wget $link_vmware -O /tmp/vmware/vmware.bundle
    sudo chmod +x /tmp/vmware/vmware.bundle
    sudo /tmp/vmware/vmware.bundle --console --required --eulas-agreed
    sudo adduser $username disk
    sudo rm -r /tmp/vmware
fi

if [[ $osname == $debiansid ]]; then
    sudo apt install build-essential -y
    sudo apt install linux-headers-$(uname -r) -y
    sudo mkdir /tmp/vmware
    sudo wget $link_vmware -O /tmp/vmware/vmware.bundle
    sudo chmod +x /tmp/vmware/vmware.bundle
    sudo /tmp/vmware/vmware.bundle --console --required --eulas-agreed
    sudo adduser $username disk
    sudo rm -r /tmp/vmware
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install kernel-headers-$(uname -r) kernel-devel -y
    sudo mkdir /tmp/vmware
    sudo wget $link_vmware -O /tmp/vmware/vmware.bundle
    sudo chmod +x /tmp/vmware/vmware.bundle
    sudo /tmp/vmware/vmware.bundle --console --required --eulas-agreed
    sudo usermod -a -G disk $username
    sudo rm -r /tmp/vmware
fi

if [[ $osname == $ubuntults ]]; then
    sudo apt install build-essential -y
    sudo apt install linux-headers-$(uname -r) -y
    sudo mkdir /tmp/vmware
    sudo wget $link_vmware -O /tmp/vmware/vmware.bundle
    sudo chmod +x /tmp/vmware/vmware.bundle
    sudo /tmp/vmware/vmware.bundle --console --required --eulas-agreed
    sudo adduser $username disk
    sudo rm -r /tmp/vmware
fi

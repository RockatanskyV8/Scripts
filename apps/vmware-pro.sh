#!/bin/bash
source config.sh

link_vmware_pro="https://download3.vmware.com/software/wkst/file/VMware-Workstation-Full-15.0.4-12990004.x86_64.bundle"

if [[ $osname == $archlinux ]]; then
    $missing
fi

if [[ $osname == $debian ]]; then
    sudo apt install build-essential -y
    sudo apt install linux-headers-$(uname -r) -y
    sudo mkdir /tmp/vmware
    sudo wget $link_vmware_pro -O /tmp/vmware/vmware-workstation.bundle
    sudo chmod +x /tmp/vmware/vmware-workstation.bundle
    sudo /tmp/vmware/vmware-workstation.bundle --console --required --eulas-agreed
    sudo adduser $username disk
    sudo rm -r /tmp/vmware
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install kernel-headers-$(uname -r) kernel-devel -y
    sudo mkdir /tmp/vmware
    sudo wget $link_vmware_pro -O /tmp/vmware/vmware-workstation.bundle
    sudo chmod +x /tmp/vmware/vmware-workstation.bundle
    sudo /tmp/vmware/vmware-workstation.bundle --console --required --eulas-agreed
    sudo usermod -a -G disk $username
    sudo rm -r /tmp/vmware
fi

if [[ $osname == $ubuntu ]]; then
    sudo apt install build-essential -y
    sudo apt install linux-headers-$(uname -r) -y
    sudo mkdir /tmp/vmware
    sudo wget $link_vmware_pro -O /tmp/vmware/vmware-workstation.bundle
    sudo chmod +x /tmp/vmware/vmware-workstation.bundle
    sudo /tmp/vmware/vmware-workstation.bundle --console --required --eulas-agreed
    sudo adduser $username disk
    sudo rm -r /tmp/vmware
fi

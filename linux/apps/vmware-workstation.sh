#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
$missing
fi

if [[ $osname == "debian-9" ]]; then
sudo apt install build-essential -y
sudo apt install linux-headers-$(uname -r) -y
sudo mkdir /tmp/vmware
sudo wget http://download3.vmware.com/software/wkst/file/VMware-Workstation-Full-14.1.3-9474260.x86_64.bundle -P /tmp/vmware
sudo chmod +x /tmp/vmware/VMware-Workstation-Full-14.1.3-9474260.x86_64.bundle
sudo /tmp/vmware/VMware-Workstation-Full-14.1.3-9474260.x86_64.bundle --console --required --eulas-agreed
sudo adduser $username disk
sudo rm -r /tmp/vmware
fi

if [[ $osname == "debian-sid" ]]; then
sudo apt install build-essential -y
sudo apt install linux-headers-$(uname -r) -y
sudo mkdir /tmp/vmware
sudo wget http://download3.vmware.com/software/wkst/file/VMware-Workstation-Full-14.1.3-9474260.x86_64.bundle -P /tmp/vmware
sudo chmod +x /tmp/vmware/VMware-Workstation-Full-14.1.3-9474260.x86_64.bundle
sudo /tmp/vmware/VMware-Workstation-Full-14.1.3-9474260.x86_64.bundle --console --required --eulas-agreed
sudo adduser $username disk
sudo rm -r /tmp/vmware
fi

if [[ $osname == "fedora-29" ]]; then
sudo dnf install kernel-headers-$(uname -r) kernel-devel -y
sudo mkdir /tmp/vmware
sudo wget http://download3.vmware.com/software/wkst/file/VMware-Workstation-Full-14.1.3-9474260.x86_64.bundle -P /tmp/vmware
sudo chmod +x /tmp/vmware/VMware-Workstation-Full-14.1.3-9474260.x86_64.bundle
sudo /tmp/vmware/VMware-Workstation-Full-14.1.3-9474260.x86_64.bundle --console --required --eulas-agreed
sudo usermod -a -G disk $username
sudo rm -r /tmp/vmware
fi

if [[ $osname == "ubuntu-18.04" ]]; then
sudo apt install build-essential -y
sudo apt install linux-headers-$(uname -r) -y
sudo mkdir /tmp/vmware
sudo wget http://download3.vmware.com/software/wkst/file/VMware-Workstation-Full-14.1.3-9474260.x86_64.bundle -P /tmp/vmware
sudo chmod +x /tmp/vmware/VMware-Workstation-Full-14.1.3-9474260.x86_64.bundle
sudo /tmp/vmware/VMware-Workstation-Full-14.1.3-9474260.x86_64.bundle --console --required --eulas-agreed
sudo adduser $username disk
sudo rm -r /tmp/vmware
fi

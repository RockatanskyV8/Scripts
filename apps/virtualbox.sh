#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
sudo pakku -S virtualbox-host-modules-arch
sudo pakku -S virtualbox
sudo pakku -S virtualbox-ext-oracle
fi

if [[ $osname == "debian-9" ]]; then
sudo apt install dkms -y
sudo apt install build-essential -y
sudo apt install linux-headers-$(uname -r) -y
sudo bash -c "cat >> /etc/apt/sources.list.d/virtualbox.list <<- EOM
deb http://download.virtualbox.org/virtualbox/debian stretch contrib
EOM"
sudo mkdir /tmp/virtualbox
sudo wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -P /tmp/virtualbox
sudo apt-key add /tmp/virtualbox/oracle_vbox_2016.asc
sudo apt update
sudo apt install virtualbox-5.2 -y
sudo gpasswd -a $username vboxusers
sudo mkdir /tmp/virtualbox
sudo wget https://download.virtualbox.org/virtualbox/5.2.16/Oracle_VM_VirtualBox_Extension_Pack-5.2.16.vbox-extpack -P /tmp/virtualbox
sudo VBoxManage extpack install --replace /tmp/virtualbox/Oracle_VM_VirtualBox_Extension_Pack-5.2.16.vbox-extpack
sudo rm -r /tmp/virtualbox
fi

if [[ $osname == "debian-sid" ]]; then
sudo apt install dkms -y
sudo apt install build-essential -y
sudo apt install linux-headers-$(uname -r) -y
sudo apt install virtualbox -y
sudo gpasswd -a $username vboxusers
sudo mkdir /tmp/virtualbox
sudo wget https://download.virtualbox.org/virtualbox/5.2.16/Oracle_VM_VirtualBox_Extension_Pack-5.2.16.vbox-extpack -P /tmp/virtualbox
sudo VBoxManage extpack install --replace /tmp/virtualbox/Oracle_VM_VirtualBox_Extension_Pack-5.2.16.vbox-extpack
sudo rm -r /tmp/virtualbox
fi

if [[ $osname == "fedora-29" ]]; then
sudo dnf install dkms -y
sudo dnf install kernel-devel -y
sudo dnf install kernel-headers-$(uname -r) -y
sudo dnf install VirtualBox -y
sudo adduser $username -g vboxusers
sudo usermod -a -G vboxusers $username
sudo mkdir /tmp/virtualbox
sudo wget https://download.virtualbox.org/virtualbox/5.2.20/Oracle_VM_VirtualBox_Extension_Pack-5.2.20.vbox-extpack -P /tmp/virtualbox
sudo VBoxManage extpack install --replace /tmp/virtualbox/Oracle_VM_VirtualBox_Extension_Pack-5.2.20.vbox-extpack
sudo rm -r /tmp/virtualbox
fi

if [[ $osname == "ubuntu-18.04" ]]; then
sudo apt install dkms -y
sudo apt install build-essential -y
sudo apt install linux-headers-$(uname -r) -y
sudo apt install virtualbox -y
sudo gpasswd -a $username vboxusers
sudo apt install virtualbox-ext-pack -y
fi

if [[ $osname == "windows-10" ]]; then
choco install virtualbox --ignorechecksum -y
fi

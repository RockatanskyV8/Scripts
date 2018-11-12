#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
sudo pakku -S gitkraken
fi

if [[ $osname == "debian-9" ]]; then
sudo apt install gconf2 gvfs-bin -y
sudo apt install libgnome-keyring-common libgnome-keyring-dev -y
sudo mkdir /tmp/gitkraken
sudo wget http://ftp.br.debian.org/debian/pool/main/o/openssl/libssl1.0.0_1.0.1t-1+deb8u8_amd64.deb -P /tmp/gitkraken
sudo dpkg -i /tmp/gitkraken/libssl1.0.0_1.0.1t-1+deb8u8_amd64.deb
sudo wget https://release.gitkraken.com/linux/gitkraken-amd64.deb -P /tmp/gitkraken
sudo dpkg -i /tmp/gitkraken/gitkraken-amd64.deb
sudo rm -r /tmp/gitkraken
fi

if [[ $osname == "debian-sid" ]]; then
sudo apt install gconf2 gvfs-bin -y
sudo apt install libgnome-keyring-common libgnome-keyring-dev -y
sudo mkdir /tmp/gitkraken
sudo wget http://ftp.br.debian.org/debian/pool/main/o/openssl/libssl1.0.0_1.0.1t-1+deb8u8_amd64.deb -P /tmp/gitkraken
sudo dpkg -i /tmp/gitkraken/libssl1.0.0_1.0.1t-1+deb8u8_amd64.deb
sudo wget https://release.gitkraken.com/linux/gitkraken-amd64.deb -P /tmp/gitkraken
sudo dpkg -i /tmp/gitkraken/gitkraken-amd64.deb
sudo rm -r /tmp/gitkraken
fi

if [[ $osname == "fedora-29" ]]; then
$missing
fi

if [[ $osname == "ubuntu-18.04" ]]; then
sudo apt install gconf2 gvfs-bin -y
sudo mkdir /tmp/gitkraken
sudo wget https://release.gitkraken.com/linux/gitkraken-amd64.deb -P /tmp/gitkraken
sudo dpkg -i /tmp/gitkraken/gitkraken-amd64.deb
sudo rm -r /tmp/gitkraken
fi

if [[ $osname == "windows-10" ]]; then
choco install gitkraken --ignorechecksum -y 
fi

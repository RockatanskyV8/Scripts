#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
sudo pakku -S qbittorrent
fi

if [[ $osname == "debian-9" ]]; then
sudo apt install qbittorrent -y
fi

if [[ $osname == "debian-sid" ]]; then
sudo apt install qbittorrent -y
fi

if [[ $osname == "fedora-29" ]]; then
sudo dnf install qbittorrent -y
fi

if [[ $osname == "ubuntu-18.04" ]]; then
sudo apt install qbittorrent -y
fi

if [[ $osname == "windows-10" ]]; then
choco install qbittorrent --ignorechecksum -y
fi

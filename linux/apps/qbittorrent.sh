#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
sudo pacman -S qbittorrent --noconfirm
fi

if [[ $osname == $debianstable ]]; then
sudo apt install qbittorrent -y
fi

if [[ $osname == $debiansid ]]; then
sudo apt install qbittorrent -y
fi

if [[ $osname == $fedora ]]; then
sudo dnf install qbittorrent -y
fi

if [[ $osname == $ubuntults ]]; then
sudo apt install qbittorrent -y
fi

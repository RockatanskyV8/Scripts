#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
sudo pacman -S qbittorrent --noconfirm
fi

if [[ $osname == $debian9 ]]; then
sudo apt install qbittorrent -y
fi

if [[ $osname == $debiansid ]]; then
sudo apt install qbittorrent -y
fi

if [[ $osname == $fedora29 ]]; then
sudo dnf install qbittorrent -y
fi

if [[ $osname == $ubuntu1804 ]]; then
sudo apt install qbittorrent -y
fi

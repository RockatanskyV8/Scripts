#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
sudo pakku -S vlc --noconfirm
fi

if [[ $osname == "debian-9" ]]; then
sudo apt install vlc -y
fi

if [[ $osname == "debian-sid" ]]; then
sudo apt install vlc -y
fi

if [[ $osname == "fedora-29" ]]; then
sudo dnf install vlc -y
fi

if [[ $osname == "ubuntu-18.04" ]]; then
sudo apt install vlc -y
fi

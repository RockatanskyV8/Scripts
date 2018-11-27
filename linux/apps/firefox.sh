#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
sudo pacman -S firefox --noconfirm
fi

if [[ $osname == "debian-9" ]]; then
sudo apt install firefox-esr -y
fi

if [[ $osname == "debian-sid" ]]; then
sudo apt install firefox -y
fi

if [[ $osname == "fedora-29" ]]; then
sudo dnf install firefox -y
fi

if [[ $osname == "ubuntu-18.04" ]]; then
sudo apt install firefox -y
fi

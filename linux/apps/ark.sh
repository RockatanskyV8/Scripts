#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
sudo pakku -S ark unrar unzip p7zip --noconfirm
fi

if [[ $osname == "debian-9" ]]; then
sudo apt install ark unar unzip p7zip p7zip-full -y
fi

if [[ $osname == "debian-sid" ]]; then
sudo apt install ark unar unzip p7zip p7zip-full -y
fi

if [[ $osname == "fedora-29" ]]; then
$missing
fi

if [[ $osname == "ubuntu-18.04" ]]; then
$missing
fi

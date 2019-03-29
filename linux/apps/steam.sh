#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
sudo pacman -S steam --noconfirm
sudo pacman -S steam-native-runtime --noconfirm
fi

if [[ $osname == "debian-9" ]]; then
sudo apt install steam -y
fi

if [[ $osname == "debian-sid" ]]; then
sudo apt install steam -y
sudo apt install libcurl4
sudo ln -s /usr/lib/x86_64-linux-gnu/libcurl.so.4 /usr/lib/x86_64-linux-gnu/libcurl.so

echo "Steam requires the newest NVIDIA driver to be installed but it may not be compatible with your card if it uses one of the legacy drivers. This will change the driver priority so the system will use the correct driver. Please select the correct driver to load or the system will fallback to nouveau."
sudo update-glx --config nvidia
fi

if [[ $osname == "fedora-29" ]]; then
$missing
fi

if [[ $osname == "ubuntu-18.04" ]]; then
sudo apt install steam -y
sudo apt install xboxdrv -y
fi

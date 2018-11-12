#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
sudo pacman -S nvidia-340xx
sudo pacman -S lib32-nvidia-340xx-utils
fi

if [[ $osname == "debian-9" ]]; then
sudo apt install linux-headers-$(uname -r) -y
sudo apt install nvidia-legacy-340xx-driver -y
sudo apt install libgl1-nvidia-legacy-340xx-glx:i386 -y
fi

if [[ $osname == "debian-sid" ]]; then
sudo apt install linux-headers-$(uname -r) -y
sudo apt install nvidia-legacy-340xx-driver -y
sudo apt install libgl1-nvidia-legacy-340xx-glx:i386 -y
fi

if [[ $osname == "fedora-29" ]]; then
$missing
fi

if [[ $osname == "ubuntu-18.04" ]]; then
sudo apt install linux-headers-$(uname -r) -y
sudo apt install nvidia-340 -y
sudo apt install libgl1-nvidia-legacy-340xx-glx:i386 -y
fi

if [[ $osname == "windows-10" ]]; then
$incompatible
fi

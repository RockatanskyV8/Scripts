#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pacman -S nvidia-340xx --noconfirm
    sudo pacman -S lib32-nvidia-340xx-utils --noconfirm
fi

if [[ $osname == $debian ]]; then
    sudo apt install linux-headers-$(uname -r) -y
    sudo apt install nvidia-legacy-340xx-driver -y
    sudo apt install libgl1-nvidia-legacy-340xx-glx:i386 -y
fi

if [[ $osname == $fedora ]]; then
    $missing
fi

if [[ $osname == $ubuntu ]]; then
    sudo apt install linux-headers-$(uname -r) -y
    sudo apt install nvidia-340 -y
    sudo apt install libgl1-nvidia-legacy-340xx-glx:i386 -y
fi

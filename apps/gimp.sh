#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pacman -S gimp --noconfirm
fi

if [[ $osname == $debian ]]; then
    sudo apt install gimp -y
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install gimp -y
fi

if [[ $osname == $ubuntu ]]; then
    sudo apt install gimp -y
fi

#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pacman -S vlc --noconfirm
fi

if [[ $osname == $debian ]]; then
    sudo apt install vlc -y
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install vlc -y
fi

if [[ $osname == $ubuntu ]]; then
    sudo apt install vlc -y
fi

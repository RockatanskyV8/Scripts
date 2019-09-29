#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pacman -S allegro --noconfirm
fi

if [[ $osname == $debian ]]; then
    sudo apt install liballegro5-dev -y
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install allegro5 -y
fi

if [[ $osname == $ubuntu ]]; then
    sudo apt install liballegro5-dev -y
fi

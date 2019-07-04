#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pacman -S allegro --noconfirm
fi

if [[ $osname == $debianstable ]]; then
    sudo apt install liballegro5-dev -y
fi

if [[ $osname == $debiansid ]]; then
    sudo apt install liballegro5-dev -y
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install allegro5 -y
fi

if [[ $osname == $ubuntults ]]; then
    sudo apt install liballegro5-dev -y
fi

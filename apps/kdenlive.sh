#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pacman -S kdenlive frei0r-plugins --noconfirm
fi

if [[ $osname == $debianstable ]]; then
    sudo apt install kdenlive -y
fi

if [[ $osname == $debiansid ]]; then
    sudo apt install kdenlive -y
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install kdenlive -y
fi

if [[ $osname == $ubuntults ]]; then
    sudo apt install kdenlive -y
fi

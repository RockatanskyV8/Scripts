#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pacman -S kdenlive frei0r-plugins --noconfirm
fi

if [[ $osname == $debian ]]; then
    sudo apt install kdenlive -y
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install kdenlive frei0r-plugins -y
fi

if [[ $osname == $ubuntu ]]; then
    sudo apt install kdenlive -y
fi

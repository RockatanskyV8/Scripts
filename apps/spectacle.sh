#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pacman -S spectacle --noconfirm
fi

if [[ $osname == $debianstable ]]; then
    sudo apt install kde-spectacle -y
fi

if [[ $osname == $debiansid ]]; then
    sudo apt install kde-spectacle -y
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install spectacle -y
fi

if [[ $osname == $ubuntults ]]; then
    $missing
fi

#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    $missing
fi

if [[ $osname == $debian ]]; then
    sudo apt install retroarch -y
    sudo apt install libretro-* -y
    sudo apt purge gnome-games-app -y
    sudo adduser $username input
fi

if [[ $osname == $fedora ]]; then
    $missing
fi

if [[ $osname == $ubuntu ]]; then
    sudo apt install retroarch -y
    sudo apt install libretro-* -y
    sudo apt purge gnome-games-app -y
    sudo adduser $username input
fi

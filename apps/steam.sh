#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pacman -S steam --noconfirm
    sudo pacman -S steam-native-runtime --noconfirm
fi

if [[ $osname == $debian ]]; then
    sudo apt install steam -y
    sudo apt install libcurl4
    sudo ln -s /usr/lib/x86_64-linux-gnu/libcurl.so.4 /usr/lib/x86_64-linux-gnu/libcurl.so
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install steam -y
fi

if [[ $osname == $ubuntu ]]; then
    sudo apt install steam -y
    sudo apt install xboxdrv -y
fi

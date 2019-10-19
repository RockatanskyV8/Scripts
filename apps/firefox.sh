#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pacman -S firefox --noconfirm
fi

if [[ $osname == $debian ]]; then
    sudo apt install firefox-esr -y
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install firefox -y
fi

if [[ $osname == $ubuntu ]]; then
    sudo apt install firefox -y
fi

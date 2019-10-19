#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pacman -S keepassxc --noconfirm
fi

if [[ $osname == $debian ]]; then
    sudo apt install keepassxc -y
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install keepassxc -y
fi

if [[ $osname == $ubuntu ]]; then
    $missing
fi

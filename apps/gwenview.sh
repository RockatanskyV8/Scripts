#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pacman -S gwenview --noconfirm
fi

if [[ $osname == $debian ]]; then
    sudo apt install gwenview -y
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install gwenview -y
fi

if [[ $osname == $ubuntu ]]; then
    $missing
fi

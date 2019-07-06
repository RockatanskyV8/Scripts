#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pacman -S okular --noconfirm
fi

if [[ $osname == $debian ]]; then
    sudo apt install okular okular-extra-backends -y
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install okular -y
fi

if [[ $osname == $ubuntu ]]; then
    $missing
fi

#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pacman -S clementine --noconfirm
fi

if [[ $osname == $debian ]]; then
    sudo apt install clementine -y
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install clementine -y
fi

if [[ $osname == $ubuntu ]]; then
    sudo apt install clementine -y
fi

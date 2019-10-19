#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pacman -S kcalc --noconfirm
fi

if [[ $osname == $debian ]]; then
    sudo apt install kcalc -y
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install kcalc -y
fi

if [[ $osname == $ubuntu ]]; then
    $missing
fi

#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pacman -S kcalc --noconfirm
fi

if [[ $osname == $debianstable ]]; then
    sudo apt install kcalc -y
fi

if [[ $osname == $debiansid ]]; then
    sudo apt install kcalc -y
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install kcalc -y
fi

if [[ $osname == $ubuntults ]]; then
    $missing
fi

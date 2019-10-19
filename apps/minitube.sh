#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    git clone https://aur.archlinux.org/minitube-aur
    cd minitube-aur
    makepkg -si --noconfirm
    cd ..
    rm -rf minitube-aur
fi

if [[ $osname == $debian ]]; then
    sudo apt install minitube -y
fi

if [[ $osname == $fedora ]]; then
    $incompatible
fi

if [[ $osname == $ubuntu ]]; then
    $missing
fi

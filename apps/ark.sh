#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pacman -S ark unrar unzip p7zip --noconfirm
fi

if [[ $osname == $debian ]]; then
    sudo apt install ark unar unzip p7zip p7zip-full -y
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install ark -y
fi

if [[ $osname == $ubuntu ]]; then
    $missing
fi

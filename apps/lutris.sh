#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pacman -S vulkan-icd-loader --noconfirm
    sudo pacman -S lib32-vulkan-icd-loader --noconfirm
    sudo pacman -S steam-native-runtime --noconfirm
    sudo pacman -S lutris --noconfirm
fi

if [[ $osname == $debian ]]; then
    $missing
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install lutris -y
fi

if [[ $osname == $ubuntu ]]; then
    $missing
fi

#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
sudo pacman -S vulkan-icd-loader --noconfirm
sudo pacman -S lib32-vulkan-icd-loader --noconfirm
sudo pacman -S steam-native-runtime --noconfirm
sudo pacman -S lutris --noconfirm
fi

if [[ $osname == $debianstable ]]; then
$missing
fi

if [[ $osname == $debiansid ]]; then
$missing
fi

if [[ $osname == $fedora ]]; then
$missing
fi

if [[ $osname == $ubuntults ]]; then
$missing
fi

#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
sudo pacman -S vulkan-radeon --noconfirm
sudo pacman -S lib32-vulkan-radeon --noconfirm
fi

if [[ $osname == $debian9 ]]; then
$missing
fi

if [[ $osname == $debiansid ]]; then
$missing
fi

if [[ $osname == $fedora29 ]]; then
$missing
fi

if [[ $osname == $ubuntu1804 ]]; then
$missing
fi

#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pacman -S vulkan-radeon --noconfirm
    sudo pacman -S lib32-vulkan-radeon --noconfirm
fi

if [[ $osname == $debian ]]; then
    $missing
fi

if [[ $osname == $fedora ]]; then
    $missing
fi

if [[ $osname == $ubuntu ]]; then
    $missing
fi

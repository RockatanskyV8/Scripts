#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pacman -S xorg-server --noconfirm
    sudo pacman -S xfce4 --noconfirm
    sudo pacman -S xdg-user-dirs --noconfirm
    sudo pacman -S lightdm --noconfirm
    sudo pacman -S lightdm-gtk-greeter --noconfirm
    sudo pacman -S networkmanager --noconfirm
    sudo pacman -S pulseaudio --noconfirm
    sudo pacman -S pavucontrol --noconfirm
    sudo systemctl enable lightdm.service
    sudo systemctl enable NetworkManager.service
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

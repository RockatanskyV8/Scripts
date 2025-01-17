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
    sudo pacman -S file-roller --noconfirm
    sudo systemctl enable lightdm.service
    sudo systemctl enable NetworkManager.service
fi

if [[ $osname == $debian ]]; then
    $missing
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install @xfce-desktop-environment -y
    sudo systemctl enable lightdm
    sudo systemctl set-default graphical.target
    sudo dracut -f
fi

if [[ $osname == $ubuntu ]]; then
    $missing
fi

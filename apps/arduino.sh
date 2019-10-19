#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pacman -S arduino --noconfirm
    sudo pacman -S arduino-avr-core --noconfirm
    sudo usermod -aG uucp
    sudo usermod -aG lock
fi

if [[ $osname == $debian ]]; then
    sudo apt install arduino -y
    sudo usermod -aG dialout $username
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install arduino -y
    sudo usermod -aG dialout $username
fi

if [[ $osname == $ubuntu ]]; then
    sudo apt install arduino -y
    sudo usermod -aG dialout $username
fi

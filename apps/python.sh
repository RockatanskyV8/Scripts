#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pacman install python --noconfirm
    sudo pacman install python-pip --noconfirm
fi

if [[ $osname == $debianstable ]]; then
    sudo apt install python3 -y
    sudo apt install python3-pip -y
fi

if [[ $osname == $debiansid ]]; then
    sudo apt install python3 -y
    sudo apt install python3-pip -y
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install python -y
    sudo dnf install python-pip -y
fi

if [[ $osname == $ubuntults ]]; then
    sudo apt install python3 -y
    sudo apt install python3-pip -y
fi

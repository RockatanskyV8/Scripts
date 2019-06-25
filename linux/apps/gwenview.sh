#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
sudo pacman -S gwenview --noconfirm
fi

if [[ $osname == $debianstable ]]; then
sudo apt install gwenview -y
fi

if [[ $osname == $debiansid ]]; then
sudo apt install gwenview -y
fi

if [[ $osname == $fedora ]]; then
sudo dnf install gwenview -y
fi

if [[ $osname == $ubuntults ]]; then
$missing
fi

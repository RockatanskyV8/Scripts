#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
sudo pacman -S clementine --noconfirm
fi

if [[ $osname == $debianstable ]]; then
sudo apt install clementine -y
fi

if [[ $osname == $debiansid ]]; then
sudo apt install clementine -y
fi

if [[ $osname == $fedora ]]; then
sudo dnf install clementine -y
fi

if [[ $osname == $ubuntults ]]; then
sudo apt install clementine -y
fi

#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
sudo pacman -S gnome --noconfirm
sudo pacman -S gnome-software-packagekit-plugin --noconfirm
sudo systemctl enable gdm.service
sudo systemctl enable NetworkManager.service
fi

if [[ $osname == $debian9 ]]; then
sudo apt install gnome-core -y
fi

if [[ $osname == $debiansid ]]; then
sudo apt install gnome-core -y
fi

if [[ $osname == $fedora29 ]]; then
$missing
fi

if [[ $osname == $ubuntu1804 ]]; then
$missing
fi

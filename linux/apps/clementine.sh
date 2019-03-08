#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
git clone https://aur.archlinux.org/clementine-qt5-git
cd clementine-qt5-git
makepkg -si --noconfirm
cd ..
rm -rf clementine-qt5-git
fi

if [[ $osname == "debian-9" ]]; then
sudo apt install clementine -y
fi

if [[ $osname == "debian-sid" ]]; then
sudo apt install clementine -y
fi

if [[ $osname == "fedora-29" ]]; then
sudo dnf install clementine -y
fi

if [[ $osname == "ubuntu-18.04" ]]; then
sudo apt install clementine -y
fi

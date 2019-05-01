#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
sudo pacman -S clementine --noconfirm
fi

if [[ $osname == $debian9 ]]; then
sudo apt install clementine -y
fi

if [[ $osname == $debiansid ]]; then
sudo apt install clementine -y
fi

if [[ $osname == $fedora29 ]]; then
sudo dnf install clementine -y
fi

if [[ $osname == $ubuntu1804 ]]; then
sudo apt install clementine -y
fi

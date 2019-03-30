#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
sudo pacman -S allegro --noconfirm
fi

if [[ $osname == $debian9 ]]; then
sudo apt install liballegro5-dev -y
fi

if [[ $osname == $debiansid ]]; then
sudo apt install liballegro5-dev -y
fi

if [[ $osname == $fedora29 ]]; then
sudo dnf install allegro5 -y
fi

if [[ $osname == $ubuntu1804 ]]; then
sudo apt install liballegro5-dev -y
fi

#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
$missing
fi

if [[ $osname == $debian9 ]]; then
sudo apt install retroarch -y
sudo apt install libretro-* -y
sudo apt purge gnome-games-app -y
sudo adduser $username input
fi

if [[ $osname == $debiansid ]]; then
sudo apt install retroarch -y
sudo apt install libretro-* -y
sudo apt purge gnome-games-app -y
sudo adduser $username input
fi

if [[ $osname == $fedora29 ]]; then
$missing
fi

if [[ $osname == $ubuntu1804 ]]; then
sudo apt install retroarch -y
sudo apt install libretro-* -y
sudo apt purge gnome-games-app -y
sudo adduser $username input
fi

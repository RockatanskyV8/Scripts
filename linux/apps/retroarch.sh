#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
$missing
fi

if [[ $osname == "debian-9" ]]; then
sudo apt install retroarch -y
sudo apt install libretro-* -y
sudo apt purge gnome-games-app -y
sudo adduser $username input
fi

if [[ $osname == "debian-sid" ]]; then
sudo apt install retroarch -y
sudo apt install libretro-* -y
sudo apt purge gnome-games-app -y
sudo adduser $username input
fi

if [[ $osname == "fedora-29" ]]; then
$missing
fi

if [[ $osname == "ubuntu-18.04" ]]; then
sudo apt install retroarch -y
sudo apt install libretro-* -y
sudo apt purge gnome-games-app -y
sudo adduser $username input
fi

#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
$missing
fi

if [[ $osname == $debianstable ]]; then
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

if [[ $osname == $fedora ]]; then
$missing
fi

if [[ $osname == $ubuntults ]]; then
sudo apt install retroarch -y
sudo apt install libretro-* -y
sudo apt purge gnome-games-app -y
sudo adduser $username input
fi

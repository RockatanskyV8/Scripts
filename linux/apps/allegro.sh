#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
sudo pakku -S allegro
fi

if [[ $osname == "debian-9" ]]; then
sudo apt install liballegro5-dev -y
fi

if [[ $osname == "debian-sid" ]]; then
sudo apt install liballegro5-dev -y
fi

if [[ $osname == "fedora-29" ]]; then
$missing
fi

if [[ $osname == "ubuntu-18.04" ]]; then
sudo apt install liballegro5-dev -y
fi

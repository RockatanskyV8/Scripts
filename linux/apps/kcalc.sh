#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
sudo pakku -S kcalc --noconfirm
fi

if [[ $osname == "debian-9" ]]; then
sudo apt install kcalc -y
fi

if [[ $osname == "debian-sid" ]]; then
sudo apt install kcalc -y
fi

if [[ $osname == "fedora-29" ]]; then
sudo dnf install kcalc -y
fi

if [[ $osname == "ubuntu-18.04" ]]; then
$missing
fi

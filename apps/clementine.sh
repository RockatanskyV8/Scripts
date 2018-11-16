#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
sudo pakku -S clementine-qt5-git
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

if [[ $osname == "windows-10" ]]; then
choco install clementine --ignorechecksum -y
fi

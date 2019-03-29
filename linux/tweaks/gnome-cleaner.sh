#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
$missing
fi

if [[ $osname == "debian-9" ]]; then
$missing
fi

if [[ $osname == "debian-sid" ]]; then
$missing
fi

if [[ $osname == "fedora-29" ]]; then
sudo dnf remove gnome-boxes -y
sudo dnf remove cheese -y
sudo dnf remove gnome-contacts -y
sudo dnf remove simple-scan -y
sudo dnf remove gnome-abrt -y
sudo dnf remove gnome-documents -y
sudo dnf remove evolution -y
sudo dnf remove gnome-photos -y
sudo dnf remove gnome-maps -y
sudo dnf remove gnome-weather -y
sudo dnf remove gnome-clocks -y
sudo dnf remove rhythmbox -y
sudo dnf remove totem -y
sudo dnf remove libreoffice* -y
sudo dnf remove evince -y
sudo dnf remove yelp -y
fi

if [[ $osname == "ubuntu-18.04" ]]; then
$missing
fi

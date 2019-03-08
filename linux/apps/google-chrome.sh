#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
git clone https://aur.archlinux.org/google-chrome
cd google-chrome
makepkg -si --noconfirm
cd ..
rm -rf google-chrome
fi

if [[ $osname == "debian-9" ]]; then
sudo apt install libappindicator3-1 -y
sudo mkdir /tmp/google-chrome
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P /tmp/google-chrome
sudo dpkg -i /tmp/google-chrome/google-chrome-stable_current_amd64.deb
sudo rm -r /tmp/google-chrome
fi

if [[ $osname == "debian-sid" ]]; then
sudo apt install libappindicator3-1 -y
sudo mkdir /tmp/google-chrome
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P /tmp/google-chrome
sudo dpkg -i /tmp/google-chrome/google-chrome-stable_current_amd64.deb
sudo rm -r /tmp/google-chrome
fi

if [[ $osname == "fedora-29" ]]; then
sudo mkdir /tmp/google-chrome
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm -P /tmp/google-chrome
sudo dnf localinstall /tmp/google-chrome/google-chrome-stable_current_x86_64.rpm -y
sudo rm -r /tmp/google-chrome
fi

if [[ $osname == "ubuntu-18.04" ]]; then
sudo apt install libappindicator3-1 -y
sudo mkdir /tmp/google-chrome
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P /tmp/google-chrome
sudo dpkg -i /tmp/google-chrome/google-chrome-stable_current_amd64.deb
sudo rm -r /tmp/google-chrome
fi

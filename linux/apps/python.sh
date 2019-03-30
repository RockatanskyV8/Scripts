#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
sudo pacman install python --noconfirm
sudo pacman install python-pip --noconfirm
fi

if [[ $osname == $debian9 ]]; then
sudo apt install python3 -y
sudo apt install python3-pip -y
fi

if [[ $osname == $debiansid ]]; then
sudo apt install python3 -y
sudo apt install python3-pip -y
fi

if [[ $osname == $fedora29 ]]; then
sudo dnf install python -y
sudo dnf install python-pip -y
fi

if [[ $osname == $ubuntu1804 ]]; then
sudo apt install python3 -y
sudo apt install python3-pip -y
fi

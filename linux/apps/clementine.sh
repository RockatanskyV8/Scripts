#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
git clone https://aur.archlinux.org/clementine-qt5-git
cd clementine-qt5-git
makepkg -si --noconfirm
cd ..
rm -rf clementine-qt5-git
fi

if [[ $osname == $debian9 ]]; then
sudo apt install clementine -y
fi

if [[ $osname == $debiansid ]]; then
sudo apt install clementine -y
fi

if [[ $osname == $fedora29 ]]; then
sudo dnf install clementine -y
fi

if [[ $osname == $ubuntu1804 ]]; then
sudo apt install clementine -y
fi

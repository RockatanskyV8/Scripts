#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
git clone https://aur.archlinux.org/google-chrome
cd google-chrome
makepkg -si --noconfirm
cd ..
rm -rf google-chrome
fi

if [[ $osname == $debianstable ]]; then
sudo apt install libappindicator3-1 -y
sudo mkdir /tmp/google-chrome
sudo wget $link_google_chrome_deb -O /tmp/google-chrome/google-chrome.deb
sudo dpkg -i /tmp/google-chrome/google-chrome.deb
sudo rm -r /tmp/google-chrome
fi

if [[ $osname == $debiansid ]]; then
sudo apt install libappindicator3-1 -y
sudo mkdir /tmp/google-chrome
sudo wget $link_google_chrome_deb -O /tmp/google-chrome/google-chrome.deb
sudo dpkg -i /tmp/google-chrome/google-chrome.deb
sudo rm -r /tmp/google-chrome
fi

if [[ $osname == $fedora ]]; then
sudo mkdir /tmp/google-chrome
sudo wget $link_google_chrome_rpm -O /tmp/google-chrome/google-chrome.rpm
sudo dnf localinstall /tmp/google-chrome/google-chrome.rpm -y
sudo rm -r /tmp/google-chrome
fi

if [[ $osname == $ubuntults ]]; then
sudo apt install libappindicator3-1 -y
sudo mkdir /tmp/google-chrome
sudo wget $link_google_chrome_deb -O /tmp/google-chrome/google-chrome.deb
sudo dpkg -i /tmp/google-chrome/google-chrome.deb
sudo rm -r /tmp/google-chrome
fi

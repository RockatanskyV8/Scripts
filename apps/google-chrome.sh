#!/bin/bash
source config.sh

link_google_chrome_deb="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
link_google_chrome_rpm="https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm"

if [[ $osname == $archlinux ]]; then
    git clone https://aur.archlinux.org/google-chrome
    cd google-chrome
    makepkg -si --noconfirm
    cd ..
    rm -rf google-chrome
fi

if [[ $osname == $debian ]]; then
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

if [[ $osname == $ubuntu ]]; then
    sudo apt install libappindicator3-1 -y
    sudo mkdir /tmp/google-chrome
    sudo wget $link_google_chrome_deb -O /tmp/google-chrome/google-chrome.deb
    sudo dpkg -i /tmp/google-chrome/google-chrome.deb
    sudo rm -r /tmp/google-chrome
fi

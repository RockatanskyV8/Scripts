#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
sudo pip install youtube-dl
fi

if [[ $osname == "debian-9" ]]; then
sudo pip3 install youtube-dl
fi

if [[ $osname == "debian-sid" ]]; then
sudo pip3 install youtube-dl
fi

if [[ $osname == "fedora-29" ]]; then
sudo pip3 install youtube-dl
fi

if [[ $osname == "ubuntu-18.04" ]]; then
sudo pip3 install youtube-dl
fi

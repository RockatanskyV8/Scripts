#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
sudo pip install python-magic eyed3
fi

if [[ $osname == "debian-9" ]]; then
sudo pip3 install python-magic eyed3
fi

if [[ $osname == "debian-sid" ]]; then
sudo pip3 install python-magic eyed3
fi

if [[ $osname == "fedora-29" ]]; then
sudo pip3 install python-magic eyed3
fi

if [[ $osname == "ubuntu-18.04" ]]; then
sudo pip3 install python-magic eyed3
fi

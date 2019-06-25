#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
sudo pip install nuitka
fi

if [[ $osname == $debianstable ]]; then
sudo pip3 install nuitka
fi

if [[ $osname == $debiansid ]]; then
sudo pip3 install nuitka
fi

if [[ $osname == $fedora ]]; then
sudo pip3 install nuitka
fi

if [[ $osname == $ubuntults ]]; then
sudo pip3 install nuitka
fi

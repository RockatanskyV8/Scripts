#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pip install nuitka
fi

if [[ $osname == $debian ]]; then
    sudo pip3 install nuitka
fi

if [[ $osname == $fedora ]]; then
    sudo pip3 install nuitka
fi

if [[ $osname == $ubuntu ]]; then
    sudo pip3 install nuitka
fi

#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pip install cython
    sudo pip install pygame
    sudo pip install git+https://github.com/kivy/kivy.git@master
fi

if [[ $osname == $debianstable ]]; then
    sudo pip3 install cython
    sudo pip3 install pygame
    sudo pip3 install git+https://github.com/kivy/kivy.git@master
fi

if [[ $osname == $debiansid ]]; then
    sudo pip3 install cython
    sudo pip3 install pygame
    sudo pip3 install git+https://github.com/kivy/kivy.git@master
fi

if [[ $osname == $fedora ]]; then
    sudo pip3 install cython
    sudo pip3 install pygame
    sudo pip3 install git+https://github.com/kivy/kivy.git@master
fi

if [[ $osname == $ubuntults ]]; then
    sudo pip3 install cython
    sudo pip3 install pygame
    sudo pip3 install git+https://github.com/kivy/kivy.git@master
fi

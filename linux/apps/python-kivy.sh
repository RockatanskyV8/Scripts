#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
sudo pip install cython
sudo pip install pygame
sudo pip install git+https://github.com/kivy/kivy.git@master
fi

if [[ $osname == $debian9 ]]; then
sudo pip3 install cython
sudo pip3 install pygame
sudo pip3 install git+https://github.com/kivy/kivy.git@master
fi

if [[ $osname == $debiansid ]]; then
sudo pip3 install cython
sudo pip3 install pygame
sudo pip3 install git+https://github.com/kivy/kivy.git@master
fi

if [[ $osname == $fedora29 ]]; then
sudo pip3 install cython
sudo pip3 install pygame
sudo pip3 install git+https://github.com/kivy/kivy.git@master
fi

if [[ $osname == $ubuntu1804 ]]; then
sudo pip3 install cython
sudo pip3 install pygame
sudo pip3 install git+https://github.com/kivy/kivy.git@master
fi

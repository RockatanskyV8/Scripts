#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
sudo pip install cython
sudo pip install pygame
sudo pip install git+https://github.com/kivy/kivy.git@master
fi

if [[ $osname == "debian-9" ]]; then
sudo pip3 install cython
sudo pip3 install pygame
sudo pip3 install git+https://github.com/kivy/kivy.git@master
fi

if [[ $osname == "debian-sid" ]]; then
sudo pip3 install cython
sudo pip3 install pygame
sudo pip3 install git+https://github.com/kivy/kivy.git@master
fi

if [[ $osname == "fedora-29" ]]; then
$missing
fi

if [[ $osname == "ubuntu-18.04" ]]; then
sudo pip3 install cython
sudo pip3 install pygame
sudo pip3 install git+https://github.com/kivy/kivy.git@master
fi

if [[ $osname == "windows-10" ]]; then
C:\Python37\Scripts\pip install docutils pygments pypiwin32 kivy.deps.sdl2 kivy.deps.glew
C:\Python37\Scripts\pip install kivy.deps.gstreamer
C:\Python37\Scripts\pip install kivy.deps.angle
C:\Python37\Scripts\pip install kivy
fi

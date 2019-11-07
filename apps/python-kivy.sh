#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    pip3 install --user cython
    pip3 install --user pygame
    pip3 install --user git+https://github.com/kivy/kivy.git@master
fi

if [[ $osname == $debian ]]; then
    pip3 install --user cython
    pip3 install --user pygame
    pip3 install --user git+https://github.com/kivy/kivy.git@master
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install python3-devel mesa-libGL-devel -y
    pip3 install --user cython
    pip3 install --user pygame
    pip3 install --user git+https://github.com/kivy/kivy.git@master
fi

if [[ $osname == $ubuntu ]]; then
    pip3 install --user cython
    pip3 install --user pygame
    pip3 install --user git+https://github.com/kivy/kivy.git@master
fi

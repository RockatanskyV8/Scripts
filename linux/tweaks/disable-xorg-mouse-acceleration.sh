#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo mkdir /etc/X11/xorg.conf.d
    sudo bash -c "cat strings/config-flat-accelprofile > /etc/X11/xorg.conf.d/50-mouse-acceleration.conf"
fi

if [[ $osname == $debianstable ]]; then
    sudo mkdir /etc/X11/xorg.conf.d
    sudo bash -c "cat strings/config-flat-accelprofile > /etc/X11/xorg.conf.d/50-mouse-acceleration.conf"
fi

if [[ $osname == $debiansid ]]; then
    sudo mkdir /etc/X11/xorg.conf.d
    sudo bash -c "cat strings/config-flat-accelprofile > /etc/X11/xorg.conf.d/50-mouse-acceleration.conf"
fi

if [[ $osname == $fedora ]]; then
    sudo mkdir /etc/X11/xorg.conf.d
    sudo bash -c "cat strings/config-flat-accelprofile > /etc/X11/xorg.conf.d/50-mouse-acceleration.conf"
fi

if [[ $osname == $ubuntults ]]; then
    sudo mkdir /etc/X11/xorg.conf.d
    sudo bash -c "cat strings/config-flat-accelprofile > /etc/X11/xorg.conf.d/50-mouse-acceleration.conf"
fi

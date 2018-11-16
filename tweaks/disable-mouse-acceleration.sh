#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
sudo mkdir /etc/X11/xorg.conf.d
sudo bash -c "cat >> /etc/X11/xorg.conf.d/50-mouse-acceleration.conf <<- EOM
Section \"InputClass\"
    Identifier \"My Mouse\"
    Driver \"libinput\"
    MatchIsPointer \"yes\"
    Option \"AccelProfile\" \"flat\"
EndSection
EOM"
fi

if [[ $osname == "debian-9" ]]; then
sudo mkdir /etc/X11/xorg.conf.d
sudo bash -c "cat >> /etc/X11/xorg.conf.d/50-mouse-acceleration.conf <<- EOM
Section \"InputClass\"
    Identifier \"My Mouse\"
    Driver \"libinput\"
    MatchIsPointer \"yes\"
    Option \"AccelProfile\" \"flat\"
EndSection
EOM"
fi

if [[ $osname == "debian-sid" ]]; then
sudo mkdir /etc/X11/xorg.conf.d
sudo bash -c "cat >> /etc/X11/xorg.conf.d/50-mouse-acceleration.conf <<- EOM
Section \"InputClass\"
    Identifier \"My Mouse\"
    Driver \"libinput\"
    MatchIsPointer \"yes\"
    Option \"AccelProfile\" \"flat\"
EndSection
EOM"
fi

if [[ $osname == "fedora-29" ]]; then
$missing
fi

if [[ $osname == "ubuntu-18.04" ]]; then
sudo mkdir /etc/X11/xorg.conf.d
sudo bash -c "cat >> /etc/X11/xorg.conf.d/50-mouse-acceleration.conf <<- EOM
Section \"InputClass\"
    Identifier \"My Mouse\"
    Driver \"libinput\"
    MatchIsPointer \"yes\"
    Option \"AccelProfile\" \"flat\"
EndSection
EOM"
fi

if [[ $osname == "windows-10" ]]; then
$incompatible
fi

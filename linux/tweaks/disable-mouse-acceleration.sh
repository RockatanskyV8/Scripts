#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
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

if [[ $osname == $debian9 ]]; then
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

if [[ $osname == $debiansid ]]; then
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

if [[ $osname == $fedora29 ]]; then
$missing
fi

if [[ $osname == $ubuntu1804 ]]; then
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

#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
sudo pacman -S keepassxc --noconfirm
fi

if [[ $osname == $debian9 ]]; then
$missing
fi

if [[ $osname == $debiansid ]]; then
$missing
fi

if [[ $osname == $fedora29 ]]; then
$missing
fi

if [[ $osname == $ubuntu1804 ]]; then
$missing
fi

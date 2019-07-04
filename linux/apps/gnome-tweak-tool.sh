#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    $missing
fi

if [[ $osname == $debianstable ]]; then
    $missing
fi

if [[ $osname == $debiansid ]]; then
    $missing
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install gnome-tweak-tool -y
fi

if [[ $osname == $ubuntults ]]; then
    $missing
fi

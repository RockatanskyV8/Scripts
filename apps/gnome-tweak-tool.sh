#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    $missing
fi

if [[ $osname == $debian ]]; then
    $missing
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install gnome-tweak-tool -y
fi

if [[ $osname == $ubuntu ]]; then
    $missing
fi

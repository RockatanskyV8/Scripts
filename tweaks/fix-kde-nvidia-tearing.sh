#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo bash -c "cat strings/config-kwin-triple-buffer >> /etc/profile.d/kwin.sh"
fi

if [[ $osname == $debian ]]; then
    sudo bash -c "cat strings/config-kwin-triple-buffer >> /etc/profile.d/kwin.sh"
fi

if [[ $osname == $fedora ]]; then
    sudo bash -c "cat strings/config-kwin-triple-buffer >> /etc/profile.d/kwin.sh"
fi

if [[ $osname == $ubuntu ]]; then
    sudo bash -c "cat strings/config-kwin-triple-buffer >> /etc/profile.d/kwin.sh"
fi

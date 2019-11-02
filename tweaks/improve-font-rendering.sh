#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    mkdir "/home/$username/.config"
    mkdir "/home/$username/.config/fontconfig"
    sudo bash -c "cat strings/config-fonts > /home/$username/.config/fontconfig/fonts.conf"
    sudo bash -c "cat strings/config-freetype-version >> /etc/profile.d/freetype2.sh"
    sudo ln -s /etc/fonts/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d
    sudo ln -s /etc/fonts/conf.avail/10-sub-pixel-rgb.conf /etc/fonts/conf.d
    sudo ln -s /etc/fonts/conf.avail/11-lcdfilter-default.conf /etc/fonts/conf.d
    sudo bash -c "cat strings/config-xresources > /home/$username/.Xresources"
    xrdb -merge /home/$username/.Xresources
    fc-cache -fv
fi

if [[ $osname == $debian ]]; then
    mkdir "/home/$username/.config"
    mkdir "/home/$username/.config/fontconfig"
    sudo bash -c "cat strings/config-fonts > /home/$username/.config/fontconfig/fonts.conf"
    sudo bash -c "cat strings/config-xresources > /home/$username/.Xresources"
    xrdb -merge /home/$username/.Xresources
    fc-cache -fv
    sudo dpkg-reconfigure fontconfig-config
    sudo dpkg-reconfigure fontconfig
fi

if [[ $osname == $fedora ]]; then
    mkdir "/home/$username/.config"
    mkdir "/home/$username/.config/fontconfig"
    sudo bash -c "cat strings/config-fonts > /home/$username/.config/fontconfig/fonts.conf"
    sudo bash -c "cat strings/config-xresources > /home/$username/.Xresources"
    sudo bash -c "cat strings/config-xresources > /etc/X11/Xresources"
    xrdb -merge /etc/X11/Xresources
    xrdb -merge /home/$username/.Xresources
    fc-cache -fv
fi

if [[ $osname == $ubuntu ]]; then
    $missing
fi

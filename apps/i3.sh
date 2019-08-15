#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    $missing
fi

if [[ $osname == $debian ]]; then
    sudo apt install lightdm x11-xserver-utils i3 i3blocks xdg-user-dirs dmenu thunar pavucontrol lxappearance network-manager pulseaudio xfce4-terminal compton qt5ct qt5-style-kvantum -y
    sudo apt install arc-theme papirus-icon-theme fonts-ubuntu feh -y
    sudo systemctl enable lightdm
    sudo systemctl enable NetworkManager
    sudo systemctl enable wpa_supplicant.service
    xdg-user-dirs-update
    sudo bash -c "cat strings/config-networkmanager-managed > /etc/NetworkManager/NetworkManager.conf"
    sudo bash -c "cat strings/config-qt5ct-env >> /etc/environment"
    sudo bash -c "cat strings/config-i3-lightdm-gtk-greeter >> /etc/lightdm/lightdm-gtk-greeter.conf"
    mkdir "/home/$username/.config/i3"
    mkdir "/home/$username/.config"
    bash -c "cat strings/config-i3 > /home/$username/.config/i3/config"
    mkdir "/home/$username/.config/gtk-3.0"
    bash -c "cat strings/config-i3-gtk > /home/$username/.config/gtk-3.0/settings.ini"
    mkdir "/home/$username/.config/Kvantum"
    bash -c "cat strings/config-i3-kvantum > /home/$username/.config/Kvantum/kvantum.kvconfig"
    mkdir "/home/$username/.config/qt5ct"
    bash -c "cat strings/config-i3-qt5ct > /home/$username/.config/qt5ct/qt5ct.conf"
    mkdir "/home/$username/.config/xfce4"
    mkdir "/home/$username/.config/xfce4/terminal"
    bash -c "cat strings/config-i3-xfce4terminal > /home/$username/.config/xfce4/terminal/terminalrc"
fi

if [[ $osname == $fedora ]]; then
    $missing
fi

if [[ $osname == $ubuntu ]]; then
    $missing
fi

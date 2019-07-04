#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pacman -S plasma-meta kdebase kde-gtk-config networkmanager print-manager cups haveged packagekit-qt5 --noconfirm
    sudo systemctl enable haveged NetworkManager sddm org.cups.cupsd.service
    sudo pacman -S xdg-user-dirs --noconfirm
fi

if [[ $osname == $debianstable ]]; then
    sudo apt install kde-plasma-desktop sddm-theme-debian-breeze -y
    sudo systemctl enable sddm
    sudo apt install plasma-nm -y
    sudo systemctl enable wpa_supplicant.service
    sudo bash -c "cat > /etc/NetworkManager/NetworkManager.conf <<- EOM
    [main]
    plugins=ifupdown,keyfile

    [ifupdown]
    managed=true

    [device]
    wifi.scan-rand-mac-address=no
    EOM"
fi

if [[ $osname == $debiansid ]]; then
    sudo apt install kde-plasma-desktop sddm-theme-debian-breeze -y
    sudo systemctl enable sddm
    sudo apt install plasma-nm -y
    sudo systemctl enable wpa_supplicant.service
    sudo bash -c "cat > /etc/NetworkManager/NetworkManager.conf <<- EOM
    [main]
    plugins=ifupdown,keyfile

    [ifupdown]
    managed=true

    [device]
    wifi.scan-rand-mac-address=no
    EOM"
fi

if [[ $osname == $fedora ]]; then
    $missing
    #sudo dnf install breeze-gtk -y
fi

if [[ $osname == $ubuntults ]]; then
    $missing
fi

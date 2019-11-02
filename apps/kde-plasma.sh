#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pacman -S plasma-meta kdebase kde-gtk-config networkmanager print-manager cups haveged packagekit-qt5 --noconfirm
    sudo systemctl enable haveged NetworkManager sddm org.cups.cupsd.service
    sudo pacman -S xdg-user-dirs --noconfirm
fi

if [[ $osname == $debian ]]; then
    sudo apt install kde-plasma-desktop sddm-theme-debian-breeze -y
    sudo systemctl enable sddm
    sudo apt install plasma-nm -y
    sudo systemctl enable wpa_supplicant.service
    sudo bash -c "cat strings/config-networkmanager-managed > /etc/NetworkManager/NetworkManager.conf"
fi

if [[ $osname == $fedora ]]; then
    # sudo dnf install @kde-desktop-environment -y
    dnf install @"base-x" @"Common NetworkManager Submodules" @"Fonts" @"Hardware Support" adwaita-gtk2-theme bluedevil breeze-icon-theme cagibi colord-kde cups-pk-helper dolphin glibc-all-langpacks gnome-keyring-pam kcm_systemd kde-gtk-config kde-partitionmanager kde-print-manager kde-settings-pulseaudio kde-style-breeze kdegraphics-thumbnailers kdeplasma-addons kdialog kdnssd kf5-baloo-file kf5-kipi-plugins khotkeys kinfocenter kmenuedit konsole5 kscreen kscreenlocker ksshaskpass ksysguard kwalletmanager5 kwebkitpart kwin NetworkManager-config-connectivity-fedora pam-kwallet phonon-qt5-backend-gstreamer pinentry-qt plasma-breeze plasma-desktop plasma-desktop-doc plasma-nm plasma-nm-l2tp plasma-nm-openconnect plasma-nm-openswan plasma-nm-openvpn plasma-nm-pptp plasma-nm-vpnc plasma-pa plasma-user-manager plasma-workspace plasma-workspace-geolocation qt5-qtbase-gui qt5-qtdeclarative sddm sddm-breeze sddm-kcm sni-qt system-config-keyboard xorg-x11-drv-libinput breeze-gtk @"Printing Support" @"Input Methods" @Multimedia kfind plasma-pk-updates kate -y
    # polkit-kde plasma-drkonqi firewall-config system-config-language
    sudo systemctl enable sddm
    sudo systemctl set-default graphical.target
    sudo dracut -f
    sudo dnf remove qt5-qdbusviewer -y
fi

if [[ $osname == $ubuntu ]]; then
    $missing
fi

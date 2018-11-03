#!/bin/bash
source config.sh

# updates the system repos and packages
sudo pacman -Syu
sudo pacman -S wget

# creates the user dirs
sudo pacman -S xdg-user-dirs
xdg-user-dirs-update
cp -r /etc/skel/. /home/$username

# installs pakku aur helper
sudo pacman -S git
git clone https://aur.archlinux.org/pakku.git
cd pakku
makepkg -si
cd ..
rm -rf pakku

# adds the fstab lines
if [[ $add_fstab_lines == "yes" ]]; then
sudo bash -c "cat >> /etc/fstab <<- EOM
$fstab_lines
EOM"
fi

# adds the crypttab lines
if [[ $add_crypttab_lines == "yes" ]]; then
sudo bash -c "cat >> /etc/crypttab <<- EOM
$crypttab_lines
EOM"
fi

# installs ufw firewall
if [[ $install_ufw_firewall == "yes" ]]; then
sudo pakku -S ufw
sudo ufw enable
sudo systemctl enable ufw
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw reload
fi

# disables mouse acceleration 
if [[ $disable_mouse_acceleration == "yes" ]]; then
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

# installs some extra fonts
if [[ $install_extra_fonts == "yes" ]]; then
sudo pakku -S ttf-dejavu ttf-droid ttf-croscore ttf-roboto noto-fonts ttf-liberation ttf-ubuntu-font-family ttf-ms-fonts
fi


# improves font rendering
if [[ $improve_font_rendering == "yes" ]]; then
bash -c "cat >> /home/$username/.Xresources <<- EOM
Xft.antialias: true
Xft.hinting: true
Xft.rgba: rgb
Xft.autohint: false
Xft.hintstyle: hintslight
Xft.lcdfilter: lcddefault
EOM"
xrdb -merge .Xresources
fc-cache -fv
sudo bash -c "cat >> /etc/profile.d/freetype2.sh <<- EOM
FREETYPE_PROPERTIES=truetype:interpreter-version=35
EOM"
fi

# installs kde connect
if [[ $install_kde_connect == "yes" ]]; then
sudo pakku -S kdeconnect
sudo bash -c "cat >> /etc/ufw/applications.d/kdeconnect <<- EOM
[kdeconnect]
title=KDE Connect
description=KDE Connect
ports=1714:1764/tcp|1714:1764/udp
EOM"
sudo ufw allow kdeconnect
sudo ufw reload
fi

# installs Ark
if [[ $install_ark == "yes" ]]; then
sudo pakku -S ark
fi

# installs KCalc
if [[ $install_kcalc == "yes" ]]; then
sudo pakku -S kcalc
fi

# installs Okular
if [[ $install_okular == "yes" ]]; then
sudo pakku -S okular
fi

# installs Spectacle
if [[ $install_spectacle == "yes" ]]; then
sudo pakku -S spectacle
fi

# installs Gwenview
if [[ $install_gwenview == "yes" ]]; then
sudo pakku -S gwenview
fi

# installs PartitionManager
if [[ $install_partitionmanager == "yes" ]]; then
sudo pakku -S install partitionmanager
fi

# installs Plasma Network Manager
if [[ $install_networkmanager == "yes" ]]; then
sudo pakku -S plasma-nm
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


# extra ----------------------------------------------------------------------

# sets /etc/hosts file
if [[ $install_someonewhocares_hosts_file == "yes" ]]; then
sudo wget http://someonewhocares.org/hosts/hosts -O /etc/hosts
fi

# installs samba
if [[ $install_samba == "yes" ]]; then
sudo pacman -S samba
sudo systemctl enable smbd nmbd
sudo cp smb.conf /etc/samba
sudo smbpasswd -a $username
sudo bash -c "cat >> /etc/samba/smb.conf <<- EOM
$samba_lines
EOM"
sudo bash -c "cat >> /etc/ufw/applications.d/samba <<- EOM
[samba]
title=samba
description=samba
ports=139,445/tcp|137,138/udp
EOM"
sudo ufw allow samba
sudo ufw reload
fi

# installs Syncthing
if [[ $install_syncthing == "yes" ]]; then
sudo pakku -S syncthing
sudo systemctl enable syncthing@$username.service
sudo ufw allow syncthing
sudo ufw reload
fi

# installs Firefox
if [[ $install_firefox == "yes" ]]; then
sudo pakku -S firefox
fi

# installs Google Chrome
if [[ $install_google_chrome == "yes" ]]; then
sudo pakku -S google-chrome
fi

# installs VLC
if [[ $install_vlc == "yes" ]]; then
sudo pakku -S vlc
fi

# installs Clementine
if [[ $install_clementine == "yes" ]]; then
sudo pakku -S gst-libav gst-plugins-base gst-plugins-good gst-plugins-bad gst-plugins-ugly gst-plugin-libde265
sudo pakku -S clementine-qt5-git
#sudo pakku -S qt5-styleplugins
fi

# installs LibreOffice
if [[ $install_libreoffice == "yes" ]]; then
sudo pakku -S libreoffice
fi

# installs Virtualbox
if [[ $install_virtualbox == "yes" ]]; then
sudo pakku -S virtualbox-host-modules-arch
sudo pakku -S virtualbox
sudo pakku -S virtualbox-ext-oracle
fi

# installs qemu
if [[ $install_qemu == "yes" ]]; then
#https://wiki.debian.org/KVM
sudo pacman -S qemu
sudo pakku -S libvirt
sudo pakku -S virt-manager
sudo systemctl enable libvirtd
sudo usermod -aG libvirt $username
sudo usermod -aG kvm $username
sudo pakku -S libguestfs
sudo pakku -S ebtables
sudo systemctl enable ebtables
sudo pakku -S dnsmasq
sudo systemctl enable dnsmasq
fi

# installs QBitTorrent
if [[ $install_qbittorrent == "yes" ]]; then
sudo pakku -S qbittorrent
fi

# installs GIMP
if [[ $install_gimp == "yes" ]]; then
sudo pakku -S gimp
fi

# installs Kdenlive
if [[ $install_kdenlive == "yes" ]]; then
sudo pakku -S kdenlive
fi

# installs minitube
if [[ $install_minitube == "yes" ]]; then
sudo pakku S minitube-aur
fi

# installs FreeTube
if [[ $install_freetube == "yes" ]]; then
sudo mkdir /tmp/freetube
sudo wget https://github.com/FreeTubeApp/FreeTube/releases/download/v0.4.0-beta/FreeTube-linux-x64.zip -P /tmp/freetube
sudo unzip /tmp/freetube/FreeTube-linux-x64.zip -d /opt
sudo chmod +x /opt/FreeTube-linux-x64/FreeTube
sudo bash -c "cat >> /usr/share/applications/freetube.desktop <<- EOM
[Desktop Entry]
Name=Free Tube
Comment=Youtube desktop client
GenericName=Youtube Client
X-GNOME-FullName=FreeTube
Exec=/opt/FreeTube-linux-x64/FreeTube %u
Terminal=false
X-MultipleArgs=false
Type=Application
Icon=im-youtube
Categories=AudioVideo;Player;
StartupNotify=true
EOM"
sudo rm -r /tmp/freetube
fi

# installs VMware Player
#if [[ $install_vmware_player == "yes" ]]; then
#sudo apt install build-essential -y
#sudo apt install linux-headers-$(uname -r) -y
#sudo mkdir /tmp/vmware
#sudo wget https://download3.vmware.com/software/player/file/VMware-Player-14.1.3-9474260.x86_64.bundle -P /tmp/vmware
#sudo chmod +x /tmp/vmware/VMware-Player-14.1.3-9474260.x86_64.bundle
#sudo /tmp/vmware/VMware-Player-14.1.3-9474260.x86_64.bundle --console --required --eulas-agreed
#sudo adduser $username disk
#sudo rm -r /tmp/vmware
#fi

# installs VMware Workstation Pro
#if [[ $install_vmware_pro == "yes" ]]; then
#sudo apt install build-essential -y
#sudo apt install linux-headers-$(uname -r) -y
#sudo mkdir /tmp/vmware
#sudo wget http://download3.vmware.com/software/wkst/file/VMware-Workstation-Full-14.1.3-9474260.x86_64.bundle -P /tmp/vmware
#sudo chmod +x /tmp/vmware/VMware-Workstation-Full-14.1.3-9474260.x86_64.bundle
#sudo /tmp/vmware/VMware-Workstation-Full-14.1.3-9474260.x86_64.bundle --console --required --eulas-agreed
#sudo rm -r /tmp/vmware
#fi

# installs ProtonMail desktop
if [[ $install_protonmail_desktop == "yes" ]]; then
sudo mkdir /tmp/protonmail
sudo wget https://raw.githubusercontent.com/protonmail-desktop/application/master/app/static/Icon.png -O /tmp/protonmail/icon.png
sudo wget https://github.com/protonmail-desktop/application/releases/download/v0.5.9/protonmail-desktop-0.5.9-x86_64.AppImage -O /tmp/protonmail/protonmail
sudo mkdir /opt/protonmail
sudo mv /tmp/protonmail/icon.png /opt/protonmail
sudo mv /tmp/protonmail/protonmail /opt/protonmail
sudo chmod +x /opt/protonmail/protonmail
sudo bash -c "cat >> /usr/share/applications/protonmail.desktop <<- EOM
[Desktop Entry]
Name=Proton Mail
Comment=Secure Email desktop client
GenericName=Mail Client
X-GNOME-FullName=Proton Mail
Exec=/opt/protonmail/protonmail %u
Terminal=false
X-MultipleArgs=false
Type=Application
Icon=/opt/protonmail/icon.png
Categories=Network;
StartupNotify=true
EOM"
sudo rm -r /tmp/protonmail
fi

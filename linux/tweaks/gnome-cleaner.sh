#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
sudo pacman -R gnome-boxes --noconfirm
sudo pacman -R gnome-calendar --noconfirm
sudo pacman -R gnome-books --noconfirm
sudo pacman -R gnome-contacts --noconfirm
sudo pacman -R gnome-documents --noconfirm
sudo pacman -R gnome-maps --noconfirm
sudo pacman -R gnome-music --noconfirm
sudo pacman -R gnome-photos --noconfirm
sudo pacman -R simple-scan --noconfirm
sudo pacman -R gnome-todo --noconfirm
sudo pacman -R gnome-weather --noconfirm
sudo pacman -R totem --noconfirm
sudo pacman -R epiphany --noconfirm
# sudo pacman -R cheese --noconfirm # currently breakes gnome-control-center
sudo rm /usr/share/applications/avahi-discover.desktop
sudo rm /usr/share/applications/bssh.desktop
sudo rm /usr/share/applications/bvnc.desktop
sudo rm /usr/share/applications/qv4l2.desktop
sudo rm /usr/share/applications/qvidcap.desktop
sudo rm /usr/share/applications/nm-connection-editor.desktop
fi

if [[ $osname == $debianstable ]]; then
sudo apt purge mutt tracker -y
fi

if [[ $osname == $debiansid ]]; then
sudo apt purge mutt tracker -y
fi

if [[ $osname == $fedora ]]; then
sudo dnf remove gnome-boxes -y
sudo dnf remove gnome-calendar -y
sudo dnf remove cheese -y
sudo dnf remove gnome-contacts -y
sudo dnf remove simple-scan -y
sudo dnf remove gnome-abrt -y
sudo dnf remove gnome-documents -y
sudo dnf remove evolution -y
sudo dnf remove gnome-photos -y
sudo dnf remove gnome-maps -y
sudo dnf remove gnome-weather -y
sudo dnf remove gnome-clocks -y
sudo dnf remove rhythmbox -y
sudo dnf remove totem -y
sudo dnf remove libreoffice* -y
sudo dnf remove evince -y
sudo dnf remove yelp -y
sudo dnf remove flatpak -y
fi

if [[ $osname == $ubuntults ]]; then
$missing
fi

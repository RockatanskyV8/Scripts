#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
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

if [[ $osname == "debian-9" ]]; then
sudo apt install qemu-kvm -y
sudo apt install libvirt-clients -y
sudo apt install libvirt-daemon-system -y
sudo apt install virt-manager -y
sudo apt install libguestfs-tools -y
sudo adduser $username libvirt
sudo adduser $username libvirt-qemu
fi

if [[ $osname == "debian-sid" ]]; then
sudo apt install qemu-kvm -y
sudo apt install libvirt-clients -y
sudo apt install libvirt-daemon-system -y
sudo apt install virt-manager -y
sudo apt install libguestfs-tools -y
sudo adduser $username libvirt
sudo adduser $username libvirt-qemu
fi

if [[ $osname == "fedora-29" ]]; then
sudo dnf install qemu-kvm libvirt virt-install bridge-utils virt-manager libguestfs-tools -y
sudo usermod -a -G libvirt $username
sudo usermod -a -G qemu $username
sudo systemctl enable libvirtd 
sudo nmcli connection add type bridge autoconnect yes con-name br0 ifname br0
sudo nmcli connection modify br0 ipv4.addresses 10.0.0.30/24 ipv4.method manual 
sudo nmcli connection modify br0 ipv4.gateway 10.0.0.1 
sudo nmcli connection modify br0 ipv4.dns 10.0.0.1 
sudo nmcli connection del ens3 
sudo nmcli connection add type bridge-slave autoconnect yes con-name ens3 ifname ens3 master br0 
fi

if [[ $osname == "ubuntu-18.04" ]]; then
$missing
fi

if [[ $osname == "windows-10" ]]; then
$incompatible
fi

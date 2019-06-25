#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
sudo pacman -S qemu --noconfirm
sudo pacman -S libvirt --noconfirm
sudo pacman -S openbsd-netcat --noconfirm
sudo pacman -S dmidecode --noconfirm
sudo pacman -S virt-manager --noconfirm
sudo systemctl enable libvirtd
sudo usermod -aG libvirt $username
sudo usermod -aG kvm $username
sudo pacman -S ebtables --noconfirm
sudo systemctl enable ebtables
sudo pacman -S dnsmasq --noconfirm
sudo systemctl enable dnsmasq
sudo pacman -S perl-sys-virt --noconfirm
git clone https://aur.archlinux.org/hivex
cd hivex
makepkg -si --noconfirm
cd ..
rm -rf hivex
git clone https://aur.archlinux.org/libguestfs
cd libguestfs
makepkg -si --noconfirm
cd ..
rm -rf libguestfs
sudo pacman -S ovmf --noconfirm
sudo bash -c "cat >> /etc/libvirt/qemu.conf <<- EOM
nvram = [
    \"/usr/share/ovmf/x64/OVMF_CODE.fd:/usr/share/ovmf/x64/OVMF_VARS.fd\"
]
EOM"
sudo pacman -S multipath-tools --noconfirm
fi

if [[ $osname == $debianstable ]]; then
sudo apt install qemu-kvm -y
sudo apt install libvirt-clients -y
sudo apt install libvirt-daemon-system -y
sudo apt install virt-manager -y
sudo apt install libguestfs-tools -y
sudo adduser $username libvirt
sudo adduser $username libvirt-qemu
fi

if [[ $osname == $debiansid ]]; then
sudo apt install qemu-kvm -y
sudo apt install libvirt-clients -y
sudo apt install libvirt-daemon-system -y
sudo apt install virt-manager -y
sudo apt install libguestfs-tools -y
sudo adduser $username libvirt
sudo adduser $username libvirt-qemu
fi

if [[ $osname == $fedora ]]; then
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

if [[ $osname == $ubuntults ]]; then
$missing
fi

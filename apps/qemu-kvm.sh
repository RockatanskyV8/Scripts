#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pacman -S qemu --noconfirm
    sudo pacman -S libvirt --noconfirm
    sudo pacman -S openbsd-netcat --noconfirm
    sudo pacman -S dmidecode --noconfirm
    sudo pacman -S virt-manager --noconfirm
    sudo systemctl enable libvirtd
    sudo sed -i 's/ExecStart=\/usr\/bin\/libvirtd --timeout 120 $LIBVIRTD_ARGS/ExecStart=\/usr\/bin\/libvirtd $LIBVIRTD_ARGS/' "/etc/systemd/system/multi-user.target.wants/libvirtd.service"
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
    sudo bash -c "cat strings/config-ovmf-nvram >> /etc/libvirt/qemu.conf"
    sudo pacman -S multipath-tools --noconfirm
fi

if [[ $osname == $debian ]]; then
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
fi

if [[ $osname == $ubuntu ]]; then
    $missing
fi

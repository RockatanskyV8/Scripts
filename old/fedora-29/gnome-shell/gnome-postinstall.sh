#!/bin/bash
source config.sh

# updates the system repos
sudo dnf update -y

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

# fixes sudden volume spikes
if [[ $fix_sudden_volume_spikes == "yes" ]]; then
sudo bash -c "cat >> /etc/pulse/daemon.conf <<- EOM
flat-volumes = no
EOM"
fi

# enables rpm fusion repos
if [[ $enable_rpm_fusion_repos == "yes" ]]; then
sudo su -c 'dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y'
fi

# installs Microsoft fonts
if [[ $install_ms_fonts == "yes" ]]; then
sudo mkdir /tmp/olea
sudo wget http://olea.org/paquetes-rpm/olea-repo-release-0.0.4-1olea.noarch.rpm -P /tmp/olea
sudo dnf localinstall /tmp/olea/olea-repo-release-0.0.4-1olea.noarch.rpm
sudo dnf install msttcore-fonts -y
fi

if [[ $improve_font_rendering == "yes" ]]; then
sudo dnf copr enable dawid/better_fonts -y
sudo dnf install fontconfig-enhanced-defaults fontconfig-font-replacements -y
fi

# drivers ----------------------------------------------------------------------

# installs Nvidia legacy drivers for G94
#if [[ $install_nvidia_340xx == "yes" ]]; then
#sudo dnf install xorg-x11-drv-nvidia-340xx akmod-nvidia-340xx -y
#sudo dnf install xorg-x11-drv-nvidia-340xx-cuda -y
#fi

# installs virtualbox guest additions 
if [[ $virtualbox_guest_additions == "yes" ]]; then
sudo dnf install p7zip p7zip-plugins -y
sudo dnf install kernel-headers-$(uname -r) kernel-devel -y
sudo mkdir /tmp/vbox-iso
sudo wget http://download.virtualbox.org/virtualbox/5.2.20/VBoxGuestAdditions_5.2.20.iso -P /tmp/vbox-iso
sudo 7z x /tmp/vbox-iso/VBoxGuestAdditions_5.2.20.iso -o/tmp/vbox-iso
sudo chmod +x /tmp/vbox-iso/VBoxLinuxAdditions.run
sudo /tmp/vbox-iso/VBoxLinuxAdditions.run
sudo rm -rf /tmp/vbox-iso
sudo usermod -a -G vboxsf $username
fi

# installs qemu spice vdagent and qxl driver
if [[ $install_qemu_spice_qxl == "yes" ]]; then
sudo dnf install spice-vdagent -y
sudo dnf install xorg-x11-drv-qxl -y
fi

# extra ----------------------------------------------------------------------

# sets /etc/hosts file
if [[ $install_someonewhocares_hosts_file == "yes" ]]; then
sudo wget http://someonewhocares.org/hosts/hosts -O /etc/hosts
fi

# installs multimedia codecs
if [[ $install_multimedia_codecs == "yes" ]]; then
sudo dnf install amrnb amrwb faad2 flac ffmpeg gpac-libs lame libfc14audiodecoder mencoder mplayer x264 x265 gstreamer-plugins-espeak gstreamer-plugins-fc gstreamer-rtsp gstreamer-plugins-good gstreamer-plugins-bad gstreamer-plugins-bad-free-extras gstreamer-plugins-bad-nonfree gstreamer-plugins-ugly gstreamer-ffmpeg gstreamer1-plugins-base gstreamer1-libav gstreamer1-plugins-bad-free-extras gstreamer1-plugins-bad-freeworld gstreamer1-plugins-base-tools gstreamer1-plugins-good-extras gstreamer1-plugins-ugly gstreamer1-plugins-bad-free gstreamer1-plugins-good -y
fi

# installs samba
if [[ $install_samba == "yes" ]]; then
sudo dnf install samba -y
sudo systemctl enable smb.service nmb.service
sudo smbpasswd -a $username
sudo bash -c "cat >> /etc/samba/smb.conf <<- EOM
$samba_lines
EOM"
sudo firewall-cmd --add-service=samba --permanent
sudo firewall-cmd --reload
fi

# installs Syncthing
if [[ $install_syncthing == "yes" ]]; then
sudo dnf install syncthing -y
sudo systemctl enable syncthing@$username.service
sudo firewall-cmd --add-service=syncthing --permanent
sudo firewall-cmd --reload
fi

# installs Firefox
if [[ $install_firefox == "yes" ]]; then
sudo dnf install firefox -y
fi

# installs Google Chrome
if [[ $install_google_chrome == "yes" ]]; then
#sudo dnf install libappindicator -y
sudo mkdir /tmp/google-chrome
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm -P /tmp/google-chrome
sudo dnf localinstall /tmp/google-chrome/google-chrome-stable_current_x86_64.rpm
sudo rm -r /tmp/google-chrome
fi

# installs VLC
if [[ $install_vlc == "yes" ]]; then
sudo dnf install vlc -y
fi

# installs Clementine
if [[ $install_clementine == "yes" ]]; then
sudo dnf install clementine -y
fi

# installs LibreOffice
if [[ $install_libreoffice == "yes" ]]; then
sudo dnf install libreoffice -y
fi

# installs Virtualbox
if [[ $install_virtualbox == "yes" ]]; then
sudo dnf install dkms -y
sudo dnf install kernel-devel -y
sudo dnf install kernel-headers-$(uname -r) -y
sudo dnf install VirtualBox -y
sudo adduser $username -g vboxusers
sudo usermod -a -G vboxusers $username
sudo mkdir /tmp/virtualbox
sudo wget https://download.virtualbox.org/virtualbox/5.2.20/Oracle_VM_VirtualBox_Extension_Pack-5.2.20.vbox-extpack -P /tmp/virtualbox
sudo VBoxManage extpack install --replace /tmp/virtualbox/Oracle_VM_VirtualBox_Extension_Pack-5.2.20.vbox-extpack
sudo rm -r /tmp/virtualbox
fi

# installs qemu
if [[ $install_qemu == "yes" ]]; then
#https://wiki.debian.org/KVM
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

# installs QBitTorrent
if [[ $install_qbittorrent == "yes" ]]; then
sudo dnf install qbittorrent -y
fi

# installs GIMP
if [[ $install_gimp == "yes" ]]; then
sudo dnf install gimp -y
fi

# installs Kdenlive
if [[ $install_kdenlive == "yes" ]]; then
sudo dnf install kdenlive -y
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
Icon=video-x-generic
Categories=AudioVideo;Player;
StartupNotify=true
EOM"
sudo rm -r /tmp/freetube
fi

# installs VMware Player
if [[ $install_vmware_player == "yes" ]]; then
sudo dnf install kernel-headers-$(uname -r) kernel-devel -y
sudo mkdir /tmp/vmware
sudo wget https://download3.vmware.com/software/player/file/VMware-Player-14.1.3-9474260.x86_64.bundle -P /tmp/vmware
sudo chmod +x /tmp/vmware/VMware-Player-14.1.3-9474260.x86_64.bundle
sudo /tmp/vmware/VMware-Player-14.1.3-9474260.x86_64.bundle --console --required --eulas-agreed
sudo usermod -a -G disk $username
sudo rm -r /tmp/vmware
fi

# installs VMware Workstation Pro
if [[ $install_vmware_pro == "yes" ]]; then
sudo dnf install kernel-headers-$(uname -r) kernel-devel -y
sudo mkdir /tmp/vmware
sudo wget http://download3.vmware.com/software/wkst/file/VMware-Workstation-Full-14.1.3-9474260.x86_64.bundle -P /tmp/vmware
sudo chmod +x /tmp/vmware/VMware-Workstation-Full-14.1.3-9474260.x86_64.bundle
sudo /tmp/vmware/VMware-Workstation-Full-14.1.3-9474260.x86_64.bundle --console --required --eulas-agreed
sudo usermod -a -G disk $username
sudo rm -r /tmp/vmware
fi

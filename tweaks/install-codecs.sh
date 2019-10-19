#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pacman -S gst-libav gst-plugins-base gst-plugins-good gst-plugins-bad gst-plugins-ugly --noconfirm
    git clone https://aur.archlinux.org/gst-plugin-libde265
    cd gst-plugin-libde265
    makepkg -si --noconfirm
    cd ..
    rm -rf gst-plugin-libde265
fi

if [[ $osname == $debian ]]; then
    $missing
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install amrnb amrwb faad2 flac ffmpeg gpac-libs lame libfc14audiodecoder mencoder mplayer x264 x265 gstreamer-plugins-espeak gstreamer-plugins-bad gstreamer-plugins-bad-nonfree gstreamer-plugins-ugly gstreamer-ffmpeg gstreamer1-plugins-base gstreamer1-libav gstreamer1-plugins-bad-free-extras gstreamer1-plugins-bad-freeworld gstreamer1-plugins-base-tools gstreamer1-plugins-good-extras gstreamer1-plugins-ugly gstreamer1-plugins-bad-free gstreamer1-plugins-good -y
fi

if [[ $osname == $ubuntu ]]; then
    $missing
fi

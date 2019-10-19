#!/bin/bash

# basic information about the system
username=$USER
osname=$(IFS="=" read -ra ADDR <<< $(cat /etc/os-release | grep PRETTY_NAME); echo ${ADDR[-1]} | cut -d'"' -f 2)

# should match /etc/os-release PRETTY_NAME string
debian="Debian GNU/Linux 10 (buster)"
ubuntu="Ubuntu 18.04.3 LTS"
fedora="Fedora 31 (Thirty One)"
archlinux="Arch Linux"

# what runs on these conditions
incompatible="echo This is incompatible with $osname"
missing="echo This is not implemented for $osname yet"

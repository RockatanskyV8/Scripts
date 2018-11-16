#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
$missing
fi

if [[ $osname == "debian-9" ]]; then
sudo apt install retroarch -y
sudo apt install libretro-* -y
sudo apt purge gnome-games-app -y
sudo adduser $username input
fi

if [[ $osname == "debian-sid" ]]; then
sudo apt install retroarch -y
sudo apt install libretro-* -y
sudo apt purge gnome-games-app -y
sudo adduser $username input
fi

if [[ $osname == "fedora-29" ]]; then
$missing
fi

if [[ $osname == "ubuntu-18.04" ]]; then
sudo apt install retroarch -y
sudo apt install libretro-* -y
sudo apt purge gnome-games-app -y
sudo adduser $username input
fi

if [[ $osname == "windows-10" ]]; then
choco install retroarch --ignorechecksum -y    
$Shell = New-Object -ComObject ("WScript.Shell")
$ShortCut = $Shell.CreateShortcut("C:\Users\$username\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\RetroArch.lnk")
$ShortCut.TargetPath="C:\ProgramData\chocolatey\lib\retroarch\tools\retroarch.exe"
$ShortCut.Arguments=""
$ShortCut.WorkingDirectory = "C:\ProgramData\chocolatey\lib\retroarch\tools";
$ShortCut.WindowStyle = 1;
$ShortCut.IconLocation = "C:\ProgramData\chocolatey\lib\retroarch\tools\retroarch.exe, 0";
$ShortCut.Description = "Launches RetroArch";
$ShortCut.Save()
fi

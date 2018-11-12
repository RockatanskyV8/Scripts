. .\config.ps1

# system

# extra
if ($install_someonewhocares_hosts_file -eq "yes"){
    bitsadmin /transfer download /download /priority normal http://someonewhocares.org/hosts/hosts C:\Windows\System32\drivers\etc\hosts
    attrib +r C:\Windows\System32\drivers\etc\hosts
}

if ($install_retroarch -eq "yes"){
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
}

if ($install_7zip -eq "yes"){
    choco install 7zip --ignorechecksum -y
}

# installs Syncthing
if ($install_syncthing -eq "yes"){
    choco install syncthing --ignorechecksum -y
    echo start "Syncthing" /low "C:\ProgramData\chocolatey\bin\syncthing.exe" -no-console -no-browser > "C:\Users\$username\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\syncthing.bat"
}

if ($install_7zip -eq "yes"){
    choco install 7zip --ignorechecksum -y
}

if ($install_firefox -eq "yes"){
    choco install firefox --ignorechecksum -y
}

if ($install_google_chrome -eq "yes"){
    choco install googlechrome --ignorechecksum -y 
}

if ($install_vlc -eq "yes"){
    choco install vlc --ignorechecksum -y
}

if ($install_clementine -eq "yes"){
    choco install clementine --ignorechecksum -y 
}

if ($install_libreoffice -eq "yes"){
    choco install libreoffice --ignorechecksum -y
}

if ($install_virtualbox -eq "yes"){
    choco install virtualbox --ignorechecksum -y
}

if ($install_qbittorrent -eq "yes"){
    choco install qbittorrent --ignorechecksum -y
}

if ($install_gimp -eq "yes"){
    choco install gimp --ignorechecksum -y
}

if ($install_steam -eq "yes"){
    choco install steam --ignorechecksum -y
}

if ($install_origin -eq "yes"){
    choco install origin --ignorechecksum -y 
}

if ($install_uplay -eq "yes"){
    choco install uplay --ignorechecksum -y
}

if ($install_msi_afterburner -eq "yes"){
    choco install msiafterburner --ignorechecksum -y 
}

if ($install_openssh -eq "yes"){
    choco install openssh --ignorechecksum -y
}

if ($install_vmware_player -eq "yes"){
    mkdir C:\Windows\Temp\vmware
    bitsadmin /transfer download /download /priority normal https://download3.vmware.com/software/player/file/VMware-player-14.1.3-9474260.exe C:\Windows\Temp\vmware\vmware.exe
    start C:\Windows\Temp\vmware\vmware.exe
    #rmdir /s C:\Windows\Temp\vmware\
}

# development
if ($install_git -eq "yes"){
    choco install git --ignorechecksum -y 
}

if ($install_gitkraken -eq "yes"){
    choco install gitkraken --ignorechecksum -y 
}

if ($install_vscode -eq "yes"){
    choco install visualstudiocode --ignorechecksum -y
}

if ($install_arduino -eq "yes"){
    choco install arduino --ignorechecksum -y 
}

if ($install_netbeans -eq "yes"){
    choco install netbeans --ignorechecksum -y 
}

if ($install_eclipse -eq "yes"){
    choco install eclipse --ignorechecksum -y 
}

if ($install_android_studio -eq "yes"){
    choco install androidstudio --ignorechecksum -y 
}

if ($install_pycharm_community -eq "yes"){
    choco install pycharm-community --ignorechecksum -y 
}

if ($install_python3 -eq "yes"){
    choco install python --ignorechecksum -y
}

if ($install_python2 -eq "yes"){
    choco install python2 --ignorechecksum -y
}

if ($install_eyed3 -eq "yes"){
    C:\Python37\Scripts\pip install eyed3
}

if ($install_xlsxwriter -eq "yes"){
    C:\Python37\Scripts\pip install xlsxwriter
}

if ($install_nuitka -eq "yes"){
    C:\Python37\Scripts\pip install nuitka
}

if ($install_kivy -eq "yes"){
    C:\Python37\Scripts\pip install docutils pygments pypiwin32 kivy.deps.sdl2 kivy.deps.glew
    C:\Python37\Scripts\pip install kivy.deps.gstreamer
    C:\Python37\Scripts\pip install kivy.deps.angle
    C:\Python37\Scripts\pip install kivy
}

if ($install_vscommunity -eq "yes"){
    choco install visualstudio2017community --ignorechecksum -y
}

if ($install_mysql_workbench -eq "yes"){
    choco install mysql.workbench --version=6.2.5 --ignorechecksum -y 
}

if ($install_xampp -eq "yes"){
    choco install bitnami-xampp --ignorechecksum -y 
}

if ($install_apache_tomcat -eq "yes"){
    choco install tomcat --ignorechecksum -y 
}

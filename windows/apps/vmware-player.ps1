mkdir C:\Windows\Temp\vmware
bitsadmin /transfer download /download /priority normal https://download3.vmware.com/software/player/file/VMware-player-14.1.3-9474260.exe C:\Windows\Temp\vmware\vmware.exe
start C:\Windows\Temp\vmware\vmware.exe
#rmdir /s C:\Windows\Temp\vmware\

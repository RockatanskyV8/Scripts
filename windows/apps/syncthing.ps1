#
choco install syncthing --ignorechecksum -y
echo start "Syncthing" /low "C:\ProgramData\chocolatey\bin\syncthing.exe" -no-console -no-browser > "C:\Users\$username\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\syncthing.bat"

choco install syncthing --ignorechecksum -y --execution-timeout=0

echo start "Syncthing" /low "C:\ProgramData\chocolatey\bin\syncthing.exe" -no-console -no-browser > "C:\Users\$username\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\syncthing.bat"

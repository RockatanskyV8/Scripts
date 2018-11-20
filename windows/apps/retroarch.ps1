#
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

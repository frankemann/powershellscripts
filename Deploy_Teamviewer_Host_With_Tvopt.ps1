# Install Teamviewer Host Setup .Msi from your
# Teamviewer management console and combine it with your preferred default settings

$PathToHost = "Type in your direct download url to the file"
$PathToSettings = "Type in your direct download url to the file"

If(!(test-path C:\TEMP\))
{
      New-Item -ItemType Directory -Force -Path C:\TEMP\
}

cd c:\temp\
Invoke-WebRequest "$PathToHost" -Outfile Teamviewer_Host.msi
Invoke-WebRequest "$PathToSettings" -Outfile default.tvopt
Start-Process msiexec.exe -Wait -ArgumentList '/i C:\Temp\Teamviewer_Host.msi /qn SETTINGSFILE="C:\temp\default.tvopt" /quiet'
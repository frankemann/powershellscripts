# Install Onedrive Monitoring Tool

# Force use of TLS 1.2
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

$PathToFile1 = "https://kontorvarehuset-my.sharepoint.com/:u:/g/personal/frank_kontorvarehuset_no1/EYF8Bm7bufhEqnkN4kWYESYBE_13xWrnGpZLQU9OpAxnaA?download=1"
$PathToFile2 = "https://kontorvarehuset-my.sharepoint.com/:u:/g/personal/frank_kontorvarehuset_no1/EaUghTsvesRDkjrQ1EEvYPAB9BrWlouYzoASjNnSakRRtg?download=1"

If(!(test-path C:\ODTool\))
{
      New-Item -ItemType Directory -Force -Path C:\ODTool\
}

cd c:\ODTool\

# Download files
Invoke-WebRequest "$PathToFile1" -Outfile OneDriveLib.dll
Invoke-WebRequest "$PathToFile2" -Outfile OneDriveLib.pdb


# Unblock the .dll file
Unblock-File -Path C:\ODTool\OneDriveLib.dll

# Install Onedrive Monitoring Tool

# Force use of TLS 1.2
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

$PathToFile1 = "Url to OneDriveLib.dll"
$PathToFile2 = "Url to OneDriveLib.pdb"

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

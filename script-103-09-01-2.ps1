# Set execution policy
Set-ExecutionPolicy Unrestricted -Force
New-Item -ItemType directory -Path 'C:\temp'

# Install IIS and Web Management Tools.
Import-Module ServerManager
install-windowsfeature web-server, web-webserver -IncludeAllSubFeature
install-windowsfeature web-mgmt-tools

# Download the files for our web application.
Set-Location -Path C:\inetpub\wwwroot

$shell_app = new-object -com shell.application
(New-Object System.Net.WebClient).DownloadFile("https://raw.githubusercontent.com/ahmadzahoory/az103template/master/Az-103-M-09-01-Code-2.zip", (Get-Location).Path + "\Az-103-M-09-01-Code-2.zip")

$zipfile = $shell_app.Namespace((Get-Location).Path + "\Az-103-M-09-01-Code-2.zip")
$destination = $shell_app.Namespace((Get-Location).Path)
$destination.copyHere($zipfile.items())

# Create the web app in IIS
New-WebApplication -Name netapp -PhysicalPath c:\inetpub\wwwroot\logic-app-website -Site "Default Web Site" -force

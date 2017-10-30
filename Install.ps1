﻿
# Below block will downloaded ManageEngine installer from official site into tmp path if not downloaded already
if (!(Test-Path c:\ManageEngine64.exe)) {

$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile("https://www.manageengine.com/cgi-bin/download_exe?id=1-918","C:\ManageEngine64.exe")

}

# Below block will download the installation paramater setup file from Github
if (!(Test-Path C:\param.iss)) {
$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile("https://raw.githubusercontent.com/sankara7/TFS_Repo/master/param.iss","C:\param.iss")
}

# Below command will start the installation process of ManageEngine application manager in slient mode using param.iss paramter file

Start-Process "C:\ManageEngine64.exe" -ArgumentList "/s /a /s /sms /f1c:\param.iss" -Wait -NoNewWindow




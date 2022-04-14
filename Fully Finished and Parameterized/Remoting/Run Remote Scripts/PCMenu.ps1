<#
.SYNOPSIS
Script #12. This script is the main menu for all of Ryan's PC remoting scripts. 

.DESCRIPTION
This script acts as the main menu for all of my PC remoting scripts.
From this menu you can run scripts that run remote commands on computers, as well as
turn off remote PCs. 

.PARAMETER PCmenu
This parameter takes in user input to decide which script to run. If the input is not
1 or 2.
Example input: 1 
#>

$PCMenu = Read-Host "Press 1 to run a PC Script, or press 2 to shutdown a remote PC." 

if ($PCMenu -eq 1){
$MainScript = $PSScriptRoot+"\RemoteScriptPC.ps1"
&$MainScript
}

if ($PCMenu -eq 2){
$MainScript = $PSScriptRoot+"\ShutdownPC.ps1"
&$MainScript
}

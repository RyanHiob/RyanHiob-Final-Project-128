<#
.SYNOPSIS
Script # 13. This script is the main menu for all of Ryan's VM remoting scripts. 

.DESCRIPTION
This script acts as the main menu for all of my VM remoting scripts.
From this script you can run scripts that Stop, Start, and run remote commands on VMs. 

.PARAMETER VMmenu
This parameter takes in user input to decide which script to run. If the input is not
1 or 2.
Example input: 1 
#>

$VMMenu = Read-Host "Press 1 to run script on a VM, press 2 to start a VM, or press 3 to shutdown a VM." 

if ($VMMenu -eq 1){
$MainScript = $PSScriptRoot+"\RemoteScriptVM.ps1"
&$MainScript
}

if ($VMMenu -eq 2){
$MainScript = $PSScriptRoot+"\StartVM.ps1"
&$MainScript
}

if ($VMMenu -eq 3){
$MainScript = $PSScriptRoot+"\ShutdownVM.ps1"
&$MainScript
}


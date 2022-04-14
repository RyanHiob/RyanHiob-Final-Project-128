<#
.SYNOPSIS
Script # 11. This script is the menu for Ryan's Remoting Scripts.

.DESCRIPTION
This script leads you to the 2 main submenus for my remoting scripts. Pressing 1 will take you to 
my VM remoting scripts, and pressing 2 will take you to my PC remoting scripts. 
.PARAMETER menu
This menu takes in user input to decide which path to go down.
#>

$menu1 = Read-Host "Press 1 to get to the VM menu, Press 2 to get to the Remote PC menu. "

if ($menu1 -eq 1){
$MainScript = $PSScriptRoot+"\VMMenu.ps1"
&$MainScript
}

if ($menu1 -eq 2){
$MainScript = $PSScriptRoot+"\PCMenu.ps1"
&$MainScript
}

else{
return "Invalid input, please try again." 
}


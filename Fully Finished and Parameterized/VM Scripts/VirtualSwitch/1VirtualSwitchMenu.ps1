<#
.SYNOPSIS
Script #23. This script is the menu for Ryan's Virtual Switch Scripts.

.DESCRIPTION
This script connects to 3 subscripts that allow you to create Internal, External and Private virtual switches. 
 
.PARAMETER menu
This parameter takes in user input to decide which script to use.

#>



$Menu = Read-Host "Press 1 for an Internal Switch, Press 2 for an External Switch, Press 3 for a Private Switch."
If($Menu -eq 1){
$MainScript = $PSScriptRoot+"\InternalSW.ps1"
&$MainScript
}
If($Menu -eq 2){
$MainScript = $PSScriptRoot+"\ExternalSW.ps1"
&$MainScript
}
If($Menu -eq 3){
$MainScript = $PSScriptRoot+"\PrivateSW.ps1"
&$MainScript
}

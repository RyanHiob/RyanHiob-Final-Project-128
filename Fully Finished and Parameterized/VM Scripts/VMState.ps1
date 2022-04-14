<#
.SYNOPSIS
Script #33. This script allows you to manipulate the state of a created VM. 

.DESCRIPTION
This script allows you to Start, Stop, Restart, Suspend, or Resume a VM that already exists on your system.

.PARAMETER name
This parameter takes in user input to determine which switch to run the script on. 

.PARAMETER menu
This parameter decides what to do with the VM once the name is established. 

#>



$name = Read-Host "Enter the name of the VM you are using" 

$menu = Read-Host "
Press 1 to Start $name
Press 2 to Stop $name
Press 3 to Restart $name
Press 4 to Suspend $name
Press 5 to Resume $name
"

if ($menu -eq 1){ 
Start-VM -Name $name
}
if($menu -eq 2){
Stop-VM -Name $name
}
if($menu -eq 3){
Restart-VM -Name $name
}
if($menu -eq 4){ 
Suspend-VM -Name $name
}
if($menu -eq 5){
Resume-VM -Name $name
}
else{
return "Invalid Input"
}
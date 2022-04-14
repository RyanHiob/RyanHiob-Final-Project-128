<#
.SYNOPSIS
Script #17. This script is for turning off and saving a VM.

.DESCRIPTION
This script will shutdown and save a VM currently running on your PC. It is part of
my Remoting script and is linked inside of the RemoteScriptMenu.

.PARAMETER name
This parameter takes in user input to define the name of the VM you are shutting down. 
Example input: MyCoolVM

#>


param(
[string]$name
)

$name = Read-Host "Enter the name of the VM you would like to shutdown"

Stop-VM -Name $name -TurnOff

<#
.SYNOPSIS
Script #16. This script is for turning off and saving a VM.

.DESCRIPTION
This script will shutdow a remote PC.This script is part of my
RemoteScripting package and is linked inside of the RemoteScriptMenu.

.PARAMETER name
This parameter takes in user input to define the name of the PC you are shutting down. 
Example input: MyCoolPC

#>

param(
[string]$name
)

$name = Read-Host "Enter the name of the Computer you would like to shut down."

Invoke-Command -ComputerName $name -ScriptBlock{
Stop-Computer -ComputerName $name
}
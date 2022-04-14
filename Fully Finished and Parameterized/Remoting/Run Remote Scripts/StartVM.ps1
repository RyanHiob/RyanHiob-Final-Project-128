<#
.SYNOPSIS
Script #18. This script is for starting a VM. 

.DESCRIPTION
This script will start up an already created VM.  It is part of
my Remoting script and is linked inside of the RemoteScriptMenu.

.PARAMETER name
This parameter takes in user input to define the name of the VM you are starting.
Example input: MyCoolVM
#>


param(
[string]$name
)

$VMList = Get-VM | format-table -AutoSize -Wrap
$VMList

$name = Read-Host "Enter the name of the VM you would like to boot up"

Start-VM -Name $name 

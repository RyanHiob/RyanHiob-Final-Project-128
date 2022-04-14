<#
.SYNOPSIS
Script #15. This script is for running a remote command on a VM. 

.DESCRIPTION
This script will run an existing script on a remote VM. It is part of
my Remoting script and is linked inside of the RemoteScriptMenu.

.PARAMETER name
This parameter takes in user input to define the name of the PC you are running a script on.
Example input: MyCoolPC

.PARAMETER path
This parameter takes in user input to define the path to the script you would like to use. 
Example input: C:\ScriptName
#>


param(
[string]$name
[string]$path
)

$name = Read-Host "Enter the name of the VM you would like to work on"
$path = Read-Host "Paste the path to the script you would like to run"

Invoke-Command -VMName $name -ScriptBlock {
&$path
}
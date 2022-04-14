<#
.SYNOPSIS
Script # 31. This script will start a VM for you on a remote PC.

.DESCRIPTION
Quick script to run a VM that exists already on a remote PC.

.PARAMETER VMName
This is the name of the virtual machine you are trying to run.
.PARAMETER CompName
This is the name of the PC you are trying to connect to. 

.EXAMPLE
Start-VM -Name "VM Name"
#>

param(
[string] $VMName,
[String]$CompName
)

$CompName = Read-Host "Please enter the name of the computer you are remoting into"
$VMName = Read-Host "Please enter the name of the VM you are trying to start:"

Invoke-Command -ComputerName $CompName -ScriptBlock{

Start-VM -Name $VMName

}


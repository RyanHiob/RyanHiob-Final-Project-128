<#
.SYNOPSIS
Script #28. This is a script that enters a remote session with a VM. 
.DESCRIPTION
This script creates a remote session with a single VM using user input for the VM's name. 
.PARAMETER name
This is a string parameter that takes in user input to create a remote connection. 
.EXAMPLE
Enter-PSSession -VMName MyCoolVM
#>

$name = Read-Host "Enter the name of the VM you would like to work on" 
Enter-PSSession -VMName $name
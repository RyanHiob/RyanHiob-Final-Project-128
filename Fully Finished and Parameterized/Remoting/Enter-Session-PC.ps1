<#
.SYNOPSIS
Script # 5. This is a script that enters a remote session with a computer. 
.DESCRIPTION
This script creates a remote session with a single computer using user input for the PC's name. 
.PARAMETER name
This is a string parameter that takes in user input to create a remote connection. 
.EXAMPLE
Enter-PSSession -ComputerName PC_01
#>

param(
[string]$name
)


$name = Read-Host "Enter the name of the Computer you would like to work on" 
Enter-PSSession -ComputerName $name
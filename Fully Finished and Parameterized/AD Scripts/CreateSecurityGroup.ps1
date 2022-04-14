<#
.SYNOPSIS
Script # 38 This script creates an AD Security Group.
.DESCRIPTION
This script creates a Universal Security group inside of an Active Directory domain.
.PARAMETER name
This is a string parameter that names the newly created security group.
#>



param(
[string]$name
)

$name = Read-Host "Enter the Name of the Security Group you are creating."

New-ADGroup -GroupScope Universal -GroupCategory Security -Name "$name"
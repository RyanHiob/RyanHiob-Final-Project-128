<#
.SYNOPSIS
Script #7. Script for installing a primary domain controller.
.DESCRIPTION
This is a very simple modified script for creating a primary domain controller in a new forest. 
This script only works in creating a fresh DC in a fresh forest. Do not use if you are creating a secondary
domain controller in an already existing forest. 

.PARAMETER DomainName
This is for creating your domain name. Best practice asks that you use something simple and unique.

.PARAMETER NetBios
This is for creating the NetBios name for your new domain. Best practice requires you to base this off of the root of your Domain Name
#>

param(
[Parameter(Mandatory=$True)][string]$DomainName,
[Parameter(Mandatory=$True)][string]$NetBios
)



Import-Module ADDSDeployment
Install-ADDSForest `
-CreateDnsDelegation:$false `
-DatabasePath "C:\Windows\NTDS" 
-DomainMode "WinThreshold" `
-DomainName $DomainName `
-DomainNetbiosName $NetBios`
-ForestMode "WinThreshold" `
-InstallDns:$true `
-LogPath "C:\Windows\NTDS" `
-NoRebootOnCompletion:$false `
-SysvolPath "C:\Windows\SYSVOL" `
-Force:$true
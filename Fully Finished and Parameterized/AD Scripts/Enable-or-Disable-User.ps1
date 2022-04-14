<#
.SYNOPSIS
Script # 35. This script enables or disables an AD user. 
.DESCRIPTION
This script takes in user inputs to select a user, and set their state to either 
enabled or disabled. 
.PARAMETER name
This is a string parameter that takes in input to define the user.
.PARAMETER menu 
This parameter decides whether to enable or disable that user. 

#>


param(
[string]$name,
[int]$menu
)


Get-ADUser -Filter * | Format-Table -Wrap -Property Name,Enabled,DisplayName

$name = Read-Host "Enter the name of the desired user"
$menu = Read-Host "Press 1 to enable a user, or press 2 to disable a user."

If($menu -eq 1){
Set-ADUser -Identity $name -Enabled $True
}
If($menu -eq 2){
Set-ADUser -Identity $name -Enabled $False
}
else{
return "Invalid Input" 
}

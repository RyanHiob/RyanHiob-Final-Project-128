<#
.SYNOPSIS
Script # 36. This script deletes an AD User. 
.DESCRIPTION
This script takes in user inputs to select a user, and remove them.
.PARAMETER name
This is a string parameter that takes in input to define the user.
.PARAMETER menu 
This parameter checks to make sure you want to delete the user before running the script.

#>


param(
[string]$name,
[int]$menu
)


Get-ADUser -Filter * | Format-Table -Wrap -Property Name,DisplayName

$name = Read-Host "Enter the name of the desired user"
$menu = Read-Host "Are you sure you would like to delete $name? Press 1 to confirm. "

If($menu -eq 1){
Remove-ADUser -Identity $name
}

<#
.SYNOPSIS
Script # 39. This script deletes a single user to a security group. 
.DESCRIPTION
This script takes in user inputs to select a group, and then takes in input for the name
of the user that is being deleted from the defined group.
.PARAMETER group
This is a string parameter that takes in input to pick which group the user will be 
removed from. 
.PARAMETER name
This parameter takes in user input to decided which user is removed from the specified group.  

#>

$group = Read-Host "Enter the name of the group you are removing a user from"
$name = Read-Host "Enter the name of the user you are removing from $group"

Remove-ADGroupMember -Identity $group -Members $name
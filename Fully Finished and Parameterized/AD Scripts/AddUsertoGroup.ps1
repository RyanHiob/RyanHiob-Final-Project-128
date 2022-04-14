<#
.SYNOPSIS
Script # 39. This script adds a single user to a security group. 
.DESCRIPTION
This script takes in user inputs to select a group, and then takes in input for the name
of the user that is being added to the defined group.
.PARAMETER group
This is a string parameter that takes in input to pick which group the user will be 
added to. 
.PARAMETER name
This parameter takes in user input to decided which user is added to the specified group.  

#>

$group = Read-Host "Which group are you adding the user to?"
$name = Read-Host "Who are you adding to the group?"

Add-ADGroupMember -Identity $group -Members $name

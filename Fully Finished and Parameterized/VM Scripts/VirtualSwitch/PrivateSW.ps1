<#
.SYNOPSIS
Script #26. This script allows you to create a new Private virtual Switch. 

.DESCRIPTION
This script allows you to create a new Private Virtual Switch. It is a subscript to the VirtualSwitchMenu script. 

.PARAMETER name
This parameter takes in user input to name your new Private Switch. 

#>





$name = Read-Host "Enter the name for your new Private Virtual Switch" 
New-VMSwitch  -Name $Name -SwitchType Private
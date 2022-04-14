<#
.SYNOPSIS
Script #24. This script allows you to create a new External virtual Switch. 

.DESCRIPTION
This script allows you to create a new External Virtual Switch using the name of one of your Network Interfaces. 

.PARAMETER name
This parameter takes in user input to name your new External Switch. 

.PARAMETER adapter
This parameter allows you to put in the name of the network interface you are assigning the new virtual switch to.

#>



Get-NetAdapter

$name = Read-Host "Enter the name for your new External Virtual Switch" 
$adapter = read-Host "Enter the name of the NIC the new switch will associate with"

New-VMSwitch  -Name $Name -NetAdapterName "$adapter"


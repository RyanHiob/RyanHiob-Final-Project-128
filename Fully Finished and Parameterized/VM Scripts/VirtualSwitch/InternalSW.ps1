<#
.SYNOPSIS
Script #25. This script allows you to create a new Internal virtual Switch. 

.DESCRIPTION
This script allows you to create a new Internal Virtual Switch. It is part of the Virtual Switch Menu script.  

.PARAMETER name
This parameter takes in user input to name your new Internal Switch. 


#>




$name = Read-Host "Enter the name for your new Internal Virtual Switch" 
New-VMSwitch  -Name $Name -SwitchType Internal
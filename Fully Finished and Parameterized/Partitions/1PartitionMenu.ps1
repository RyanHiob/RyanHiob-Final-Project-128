<#
.SYNOPSIS
Script #8. This script is the menu for Ryan's Disk Partition Scripts.

.DESCRIPTION
This script is the menu that leads to the AddPartition and RemovePartition scripts. Depending on the input,
the user will be taken to one of those scripts to perform a task. 
 
.PARAMETER menu
This parameter takes in user input to decide which script to use.

#>




$Menu = Read-Host "Press 1 to add a disk partition, press 2 to remove a disk partition"

if ($menu -eq 1){
$MainPAth = $PSScriptRoot+"\AddPartition.ps1"
&$MainPath
}

If($menu -eq 2){
$MainPAth = $PSScriptRoot+"\RemovePartition.ps1"
&$MainPath
}
<#
.SYNOPSIS
Script #10. This script removes existing disk partiotns.

.DESCRIPTION
This script can delete existing disk partitions on a system. It first prints out all the drive letters with their partition numbers. 
Then it prompts you to pick the drive you would like to remove based on the drive letter.
Finally it asks for confirmation before removing the partition. 

.PARAMETER letter
This parameter takes in user input to determine what drive to remove. 
.PARAMETER confirm
This parameter asks for user confirmation before deleting the partition. 
#>


param(
[string]$letter,
[string]$confirm
)



Get-Partition | Format-Table -Property  DriveLetter,PartitionNumber -Wrap

$letter = Read-Host "What Drive would you like to delete?" 

$confirm = Read-Host "Are you sure you would like to delete the $letter Drive? Y/N"

if($confirm -contains "Y"){
Remove-Partition -DriveLetter $letter
}

else{
$MainPAth = $PSScriptRoot+"\RemovePartition.ps1"
&$MainPath
}
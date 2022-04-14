<#
.SYNOPSIS
Script #9. This script is used to create disk partitions. 
.DESCRIPTION
This script creates disk partitons on your current system. 

First it returns information on all the disks that you have in your machine. 
Then it prompts the user to choose the size of the partition, the source drive, and the drive letter.

.PARAMETER size
This parameter takes in user input to determine the size of the partition. 
.PARAMETER number
This parameter takes in user input to determine which source drive will be used to create the partition. 
.PARAMETER letter
This parameter takes in user input to decide what the letter representing the new partition will be.

#>



param(
[int64]$size,
[int]$number,
[string]$letter
)

Get-Disk

$number = Read-Host "Pick the disk number for the drive you would like to partition"
$size = Read-Host "Input the size of the Disk Partition (in gigs)" 
$letter = Read-Host "Input the partition letter"

$size = $size * 1gb

New-Partition -DiskNumber $Number -Size $size -DriveLetter $letter


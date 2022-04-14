<#
.SYNOPSIS
Script #30. This script edits the processors assigned to a VM.
.DESCRIPTION
This script will allow you to customize the number of processors and the maximum percentage of 
resources used for a specified virtual machine. 
.PARAMETER $VMName
This paramater defines the name of the VM you are configuring.
.PARAMETER $ProcNum
This parameter defines how many processors will be used for this VM.
.PARAMETER $max
This parameter defines the maximum percentage of resources the specified VM is allowed to use. 
This nubmer must be between 0 and 100. 
.EXAMPLE
 Set-VMProcessor VM-NAME -Count 2 -Maximum 50
#>

param(
[Parameter(Mandatory=$True)][string]$VMName,
[int]$ProcNum,
[ValidateRange(0,100)][int]$max
)

$VMName = Read-Host "Enter the name of the VM you are assigning Processors to"
$ProcNum = Read-Host "Enter the desired number of processors to assign to this VM"
$max = Read-Host "Enter the maximum percentage of availabe resources for the VM's processor"

Set-VMProcessor $VMName -Count $ProcNum -Maximum $max
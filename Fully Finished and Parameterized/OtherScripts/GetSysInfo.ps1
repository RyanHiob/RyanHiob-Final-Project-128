<#
.SYNOPSIS 
Script #37. This script gives basic hardware information for the PC you are running it on.
.DESCRIPTION
This script returns the Basic info from the system. This information includes:
The Current user and operating system.
The Systems Processor 
The Systems Hard Drives
The systems RAM 
The systems GPU.
#>


Write-Host "Basic System Info"
Get-ComputerInfo | Format-List -Property CSUsername,OSName,CSProcessors
Write-Host "Hard Drives"
Get-PhysicalDisk | Format-Table FriendlyName -AutoSize
Write-Host "RAM"
Get-WmiObject win32_physicalmemory | Format-Table Manufacturer,Capacity -autosize
Write-Host "GPU" 
Get-WmiObject win32_VideoController | Format-Table -Property Name -AutoSize

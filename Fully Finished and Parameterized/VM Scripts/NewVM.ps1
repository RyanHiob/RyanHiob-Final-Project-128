<#
.SYNOPSIS
Script #29. This script creates a new VM using Hyper-V

.DESCRIPTION
This script creates a new Virtual Machine through Hyper-V. It uses user input parameters for each 
step of the VM creation to make the code flexible. 

.PARAMETER n
Desired name for your Virtual Machine
Example input: NewVM-01

.PARAMETER mem
Desired Memory for your Virtual Machine in Gigabytes. Must be between 1 and 16. 
Example input: 4

.PARAMETER vhdpath
Path to the destination you would like to save your new virtual hard drive. Must end with the name of your hard drive.
Example input: .\NewVhd.vhdx

.PARAMETER swn
Name of an Existing Virtual Switch.
Example input: Private

.PARAMETER gen Desired genration for your virtual machine. Must be either 1 or 2
Example input: 2

.PARAMETER pat
Destination for storing your VHD.
Example input: .\VMStorage\NewVM\

.PARAMETER vhdsize
Size of your new VHD in Gigabytes
Example input: 60

.PARAMETER iso
Path for your desired ISO. Must end in the name of the ISO file you would like to use.
Example input: .\Windows10.iso

.PARAMETER dyn
Choose if you would like your virtual machine to have dynamic memory. Must be answered with either a y for yes or an n for no
Example input: y

.EXAMPLE
New-VM -Name $n -MemoryStartupBytes $mem * 1gb -BootDevice VHD -NewVHDPath "$vhdpath" -NewVHDSizeBytes $vhdsize *1gb `
-SwitchName "$swn" -Generation $gen -Path "$pat"

Add-VMDvdDrive -VMName $n -Path $iso

if($dyn -eq "y"){
Set-VMMEmory -VMName $n -DynamicMemoryEnabled $true
}

#>

#Adding parameters for all variables#
param(
[string]$n,
[ValidateRange(1,16)][int64]$mem, #Limiting the size of the memory to my own computers limitations#
[string]$vhdpath,
[string]$swn,
[int]$gen,
[string]$pat,
[int64]$vhdsize,
[string]$iso,
[string]$dyn
)

#Asking for user inputs# 
$n = Read-Host "Name of New VM"
$mem = Read-Host "Desired ammount of memory in gigabytes (Min 1, Maximum 16)"
$vhdpath = Read-Host "Enter path to hard drive save location"
$vhdsize = Read-Host "Enter the desired size of the virtual hard drive"
$swn = Read-Host "Enter the name of the desired virtual switch"
$pat = Read-Host "Enter the desired install location for the Virtual Machine"
$gen = Read-Host "Enter Virtual Machine generation (1 or 2)"
$iso = Read-Host "Enter path to the location of the desired ISO file"
$dyn = Read-Host "Would you like to utilize dynamic memory? Y/N" 



#Actual Code String# 
New-VM -Name $n -MemoryStartupBytes $mem * 1gb -BootDevice VHD -NewVHDPath "$vhdpath" -NewVHDSizeBytes $vhdsize *1gb `
-SwitchName "$swn" -Generation $gen -Path "$pat"

Add-VMDvdDrive -VMName $n -Path $iso

if($dyn -eq "y"){
Set-VMMEmory -VMName $n -DynamicMemoryEnabled $true
}






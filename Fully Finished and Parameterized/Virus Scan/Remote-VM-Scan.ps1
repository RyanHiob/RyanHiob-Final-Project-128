<#
.SYNOPSIS
Script #22. This script is for running a Windows Defender Virus Scan.

.DESCRIPTION
This script runs either a FullScan or a QuickScan depending on the answers chosen
during execution. This section is a subscript to the Scan-Menu script, and runs 
only on Virtual Machines. 

.PARAMETER menu2
This parameter is used for defining if the scan will be Full or Quick.

.PARAMETER name
This parameter will be used to define the virtual machine you are calling. If you are 
scanning on multiple VMs, seperate the names with commas. 

#>

param(
[string]$menu2,
[string]$name
)


$name = Read-Host "Type the Name(s) of the VMs you would like to scan" 
$Menu2 = Read-Host "Press 1 for QuickScan, or 2 for FullScan"

If($menu2 -eq 1){
    Invoke-Command -VMName "$name" -ScriptBlock{
    Start-MPScan -ScanType FullScan
    }
}

If($menu2 -eq 2){
    Invoke-Command -VMName $name -ScriptBlock{
    Start-MPScan -ScanType QuickScan
    }
}

else{
    return "Invalid Input, Please try again"
}
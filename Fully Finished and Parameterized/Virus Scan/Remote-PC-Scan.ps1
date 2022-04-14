<#
.SYNOPSIS
Script #21. This script is for running a Windows Defender Virus Scan.

.DESCRIPTION
This script runs either a FullScan or a QuickScan depending on the answers chosen
during execution. This section is a subscript to the Scan-Menu script, and runs 
only on remote computers. 

.PARAMETER menu3
This parameter is used for defining if the scan will be Full or Quick.

.PARAMETER name
This parameter will be used to define the computer you are calling. If you are 
scanning on multiple computers, seperate the names with commas. 

#>

param(
[string]$menu3,
[string]$name
)


$name = Read-Host "Type the Name(s) of the computers you would like to scan" 
$Menu2 = Read-Host "Press 1 for QuickScan, or 2 for FullScan"

If($menu3 -eq 1){
    Invoke-Command -ComputerName "$name" -ScriptBlock{
    Start-MPScan -ScanType FullScan
    }
}

If($menu3 -eq 2){
    Invoke-Command -ComputerName $name -ScriptBlock{
    Start-MPScan -ScanType QuickScan
    }
}

else{
    return "Invalid Input, Please try again"
}
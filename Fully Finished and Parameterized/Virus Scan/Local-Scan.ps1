<#
.SYNOPSIS
Script # 20. This script is for running a Windows Defender Virus Scan.

.DESCRIPTION
This script runs either a FullScan or a QuickScan depending on the answers chosen
during execution. This section is a subscript to the Scan-Menu script, and runs locally. 

.PARAMETER menu1
This parameter is used for defining if the scan will be Full or Quick.
Example Input: 1

#>
param(
[string]$menu1
)

$menu1 = Read-Host "Press 1 for QuickScan, or 2 for FullScan"

If($menu1 -eq 1){
    Start-MPScan -ScanType QuickScan
}
If($menu1 -eq 2){
    Start-MPScan -ScanType FullScan
}
else{
    return "Invalid Input, Please try again"
}
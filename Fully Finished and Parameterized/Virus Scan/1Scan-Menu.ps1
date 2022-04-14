<#
.SYNOPSIS
Script #19. This scricgfmenu for running a Windows Defender Virus Scan.

.DESCRIPTION
This script runs either a FullScan or a QuickScan depending on the answers chosen
during execution. It can also run a scan on remote virtual Machines. 

This is the main menu script which calls upon the Local-Scan and Remote-Scan 
subscripts. 

.PARAMETER menu0
This parameter is used for defining if the scan will be Local or Remote. 

.PARAMETER MainScript
This parameter contains the file location of the subscripts. All scripts must be in the
same folder for this menu to function properly. 

#>
param(
[string]$menu0,
[string]$MainScript
)

$menu0 = Read-Host "Press 1 to scan Local PC, Press 2 to Scan a VM, or Press 3 to scan a Remote Computer"

if($menu0 -eq 1){
$MainScript = $PSScriptRoot+"\Local-Scan.ps1"
&$MainScript
}

if($menu0 -eq 2){ 
$MainScript = $PSScriptRoot+"\Remote-VM-Scan.ps1"
&$MainScript
}

if($menu0 -eq 3){ 
$MainScript = $PSScriptRoot+"\Remote-PC-Scan.ps1"
&$MainScript
}
<#
.SYNOPSIS 
Script #34. This is my personal profile script.
.DESCRIPTION
This is my profile script. It sets the home directory, tells me the time and date, and sets me 
up for success.
#>

New-PSDrive -Name Home -PSProvider Filesystem -Root 'C:\Users\sheog\Documents\WindowsPowershell'
Set-Location home:

$date = Get-Date -Format 'f'

Write-Host "Welcome back. Today's date is $date"
Write-Host "Time to shell it like a turtle" 

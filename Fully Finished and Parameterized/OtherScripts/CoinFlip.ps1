<#
.SYNOPSIS
Script # 4. Simple Coin Flip Script

.DESCRIPTION
A script for flipping a coin. If the number is even, heads will be returned. If the number is odd, tails will be returned. 

.PARAMETER confirm
This is how the menu decides whether to start the game or to quit. 

.PARAMETER check
This is the number used to determine if the coin flip is heads or tails. 
#>
param(
[int]$confirm,
[int]$check
)



Write-Host "Welcome to Ryans Coin Flip Script!"
$confirm = Read-Host "Press 1 to flip, press 2 to dip"

if ($confirm -eq 1){
$check = Get-Random -minimum 1 -maximum 100000
if ($check %2 -eq 0){
Return "Heads!"
}
else{
return "Tails!"
}
}
else{
Return "See you later!"
Exit
}

 

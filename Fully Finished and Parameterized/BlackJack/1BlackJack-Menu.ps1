<#
.SYNOPSIS
Script #1: This script is the menu for opening up the Blackjack.ps1 game.
.DESCRIPTION
This small script links to the Blackjack.ps1 file and servers as a menu for the game. 
.PARAMETER start 
This parameter takes in user input to decide whether or not to start the game.
#>

param(
[int]$start
)


Write-Host "Welcome to Blackjack"
$start = Read-Host "Press 1 to play, Press 2 to quit"



if($start -eq 2){
return "See you next time!"
Exit
}

if ($start -eq 1){
$MainScript = $PSScriptRoot+"\BlackJack.ps1"
&$MainScript
}



    
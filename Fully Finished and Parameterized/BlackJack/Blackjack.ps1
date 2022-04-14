<#
.SYNOPSIS
Script #2. This is a script for playing Blackjack
.DESCRIPTION
This script allows you to play a simple game of Blackjack.

**BLACKJACK RULES**
The main objective of Blackjack is to get closer to 21 than the dealer without going over. 

Initially you are dealt 2 cards (which have been translated into a numerical value for you)

Once the game starts and you are given your initial value, you are given 2 options.

HIT 
If you decide to hit, then another card is drawn and added to your hand. You may hit as many times as you like,
as long as the value of your hand stays under 21. 

STAND
If you decide to stand, the dealers hand will be revealed. If your hand has a higher value, you win. If it has a 
lower value, the dealer wins. 

.PARAMETER Dealerhand
This parameter contains a number which is the value of the Dealer's hand. Will always be between 16 and 21. 

.PARAMETER Playerhand
This variable contains the player's hand, and changes depending on if the user decides to Hit or Stand. 

.PARAMETER Hit
This variable takes in a user input of 1 or 2 to decide to draw another card, or end the round. 
#>

param(
[int]$Dealerhand,
[int]$Playerhand,
[int]$hit
)

Write-Host "Dealing..."
$Dealerhand = Get-Random -Minimum 16 -Maximum 21
$Playerhand = Get-Random -Minimum 4 -Maximum 21

$hit = 1
while ($hit -eq 1){
        
        $hit = Read-Host "You were dealt a $playerhand! Press 1 to Hit, Press 2 to Stand."

        if ($hit -eq 1){
            $add = Get-Random -Minimum 2 -Maximum 10
            $playerhand = $playerhand + $add
            }

        if ($playerhand -gt 21){
        return "Bust! You unfortunately ended up with $playerhand!"
        break
        }
}
    
if ($Playerhand -lt $Dealerhand){
return "You lose! You had $playerhand and the dealer had $Dealerhand!"
}
if($Playerhand -gt $Dealerhand){
return "You win! You had $playerhand and the dealer had $Dealerhand. Congratulations!"
}



	

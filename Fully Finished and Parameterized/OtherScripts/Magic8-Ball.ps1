<#
.SYNOPSIS
Script # 6. Magic 8 Ball script to predict your future.

.DESCRIPTION
This script will take user input to generate a random Magic 8 Ball response when 
prompted to by the user. 

If you would like your future to be told to you, ask the Magic 8 Ball a question and 
press 1. The response will give you insight into what the coming days may hold. 
 
.PARAMETER 8ball
This list holds all of the possible responses that the original Magic 8 Ball 
contained. In total there is 20 possible outcomes when you run the script. 

.PARAMETER menu
This parameter prompts the user to either continue with the fortune or quit. 

.PARAMETER check 
This check digit makes sure the user stays inside of the loop as long as
they would like to. Once the user quits, they are kicked out of the loop and the
script ends. 

#>

param(
[Object[]]$8ball,
[int]$menu,
[int]$check
)


$8ball = 
"It is certian",
"It is decidedly so",
"Without a doubt.",
"Yes Definitely",
"You may rely on it", 
"As I see it, yes",
"Most Likely",
"Outlook Good",
"Yes",
"Signs Point to yes.",
"Reply hazy try again.",
"Ask me again Later",
"Better not tell you now.",
"Cannot Predict Now",
"Concentrate and try again",
"Don't count on it.",
"My reply is no.",
"My sources say no.",
"Outlook not so good.",
"Very doubtful."


$check = 1
while ($check -eq 1){
    $Menu = Read-Host "Press 1 to have your fortune told, press 2 to quit." 

    If ($menu -eq 1){
    $8ball | get-random
    }
    else{
    $check = 0
    return "See you later!"
    }
}




   


  



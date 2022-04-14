<#
.SYNOPSIS
Script # 3. Imports RAUDZ Users from the Adjusted RAUDZ Staff list file

.DESCRIPTION
Imports all users from the RauDZ staff list CSV file into a single OU folder. 
After the users are imported they are added to the seperate imported OU Structure. 

.PARAMETER Secure_String_Pwd
This is the password used for all users once imported

.EXAMPLE
Import-Csv '.\Adjusted RauDZ Staff List.csv'| New-ADUser -AccountPassword $Secure_String_Pwd -ChangePasswordAtLogon $true -Enabled $true -Path 'OU=STAFFLIST,DC=Int,DC=Raudz,DC=Com'
#>

param(
[string]$Secure_String_Pwd
)

$Secure_String_Pwd = ConvertTo-SecureString "UserP@ssword2022!" -AsPlainText -Force

Import-Csv '.\Adjusted RauDZ Staff List.csv'| New-ADUser -AccountPassword $Secure_String_Pwd -ChangePasswordAtLogon $true -Enabled $true -Path 'OU=STAFFLIST,DC=Int,DC=Raudz,DC=Com'
<#
.SYNOPSIS
Script #32. A script that applies the basic startup configuration for Virtual Machines. 

.DESCRIPTION
This script applies the IP addressing, Default Gateway, Preferred DNS Servers, and allows you to immediately restart
your Virtual Machine all thorugh a single quick script. 

.PARAMETER name
Applies your desired new hostname
.PARAMETER indexnum
Apply the index number of the interface you are working on.
.PARAMETER IPAdd
Applies the desired IP address. Do not put the subnet mask into this command.
.PARAMETER IPPrefix
Put the prefix length of your IP address here. Just put the number without the slash.
.PARAMETER IPDG
Put your desired Default Gateway for the device.
.PARAMETER PrefDNS
Put your primary DNS server here.
.PARAMETER SecDNS
Put your seccondary DNS server address here.
.PARAMETER restart
Define if you would like to restart the device once the name and addressing has been applied. 
Only takes the inputs "y" or "n"

.EXAMPLE
New-NetIPAddress -InterfaceIndex $Indexnum -IPAddress $IPadd -PrefixLength $IPPrefix  -DefaultGateway $IPDG 
Set-DNSClientServerAddress -InterfaceIndex $IndexNum -ServerAddresses ("$PrefDNS","$SecDNS")
#>
param(
[string]$name,
[int]$indexnum,
[string]$IPAdd,
[int]$IPPrefix,
[string]$IPDG,
[string]$PrefDNS,
[string]$SecDNS,
[string]$restart
)


Get-NetAdapter | Format-Table -Property Name,ifIndex,InterfaceDescription

$name = Read-Host "Enter new Hostname for device"
$indexnum = Read-Host "Enter Interface Index number"
$IPAdd = Read-Host "Enter desired IP address without the prefix"
$IPPrefix = Read-Host "Enter IP prefix number (No slash)"
$IPDG = Read-Host "Enter IP Address of the Default Gateway"
$PrefDNS = Read-Host "Enter Preferred DNS Server address"
$SecDNS = Read-Host "Enter Seccondary DNS server"
$restart = Read-Host "Would you like to restart the device after this? y/n"

Rename-Computer -NewName $name
New-NetIPAddress -InterfaceIndex $Indexnum -IPAddress $IPadd -PrefixLength $IPPrefix  -DefaultGateway $IPDG 
Set-DNSClientServerAddress -InterfaceIndex $IndexNum -ServerAddresses ("$PrefDNS","$SecDNS")

if ($restart -eq "y"){
Restart-Computer
}
else{
$null
}

<#
.SYNOPSIS
Script #27. This script allows you to create a VM Checkpoint. 

.DESCRIPTION
This script takes in the names of the VM and the name of the Checkpoint to create a checkpoint snapshot 
of a desired virtual machine.

.PARAMETER name
Variable that takes in the name of the VM you are checkpointing. 
.PARAMETER checkname
Variable that takes in the name you want to call your checkpoint. 

#>
$name = "Write your VM's name Here"
$checkname = "Name your Checkpoint" 

Checkpoint-VM "$name" -SnapshotName "$checkname"
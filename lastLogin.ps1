<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2018 v5.5.152
	 Created on:   	6/29/2018 4:51 PM
	 Created by:   	Thaddeus Pearson
	 Organization: 	
	 Filename:     	LastLogon
	===========================================================================
	.DESCRIPTION
		This is a powershell script that is used to look at the last time a user logged into a city network account.
#>

$user = read-host -Prompt 'enter the username in format [LastnameFirstinitial]'
Get-ADUser $user -Properties LastLogon | select name, @{ Name='LastLogon'; Expression= { [datetime]::FromFileTime($_.LastLogon) } }



<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2019 v5.6.156
	 Created on:   	5/20/2019 2:53 PM
	 Created by:   	Thaddeus Pearson
	 Organization: 	
	 Filename:     	
	===========================================================================
	.DESCRIPTION
		make searching user detils faster
#>

Install-Module PSwriteHTML -Scope CurrentUser -Force

$cred = Get-Credential

function queryADUser ()
{
	
	$user = Read-Host "Enter Active Directory User"
	
	Get-ADUser $user -Server ci.missoula.mt.us -Credential $cred -Properties * | out-htmlview
	
}

do
{
	
	queryADUser
	
	$respond = Read-Host "Do you want to search another user? (Y|N)"
	
}

until ($respond.ToLower() -ne "y")

exit

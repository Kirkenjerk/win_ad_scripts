$ou_name = 'ENTER OU DN HERE, I.e. OU=Computers,DC=SAGE,DC=EDU'

$export_path = 'Path to save exported data file to'

Get-ADUser -Filter * -SearchBase $ou_name | Select-Object DistinguishedName,Name,UserPrincipalName | Export-Csv -NoTypeInformation $export_path


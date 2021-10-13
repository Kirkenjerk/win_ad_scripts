Import-Module ActiveDirectory

$group_name = 'Administrators'
$export_path = 'C:\ScriptOutput\Admins.csv'

Get-ADGroupMember -Identity $group_name -Recursive | Select-Object DistinguishedName,Name,UserPrincipalName | Export-Csv -NoTypeInformation $export_path
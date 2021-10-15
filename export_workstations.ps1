$OUpath = 'OU=COMPUTERS,DC=SAGE,DC=EDU'
$ExportPath = 'computers_in_ou.csv'
Get-ADComputer -Filter * -SearchBase $OUpath | Select-object DistinguishedName, DNSHostName, Name | Export-Csv -NoType $ExportPath

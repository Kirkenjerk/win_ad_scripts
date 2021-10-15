$OUpath = 'OU=Laptops,OU=Windows_10,OU=Workstations,OU=Computers,DC=SAGE,DC=EDU'
$ExportPath = 'laptops_in_ou.csv'
Get-ADComputer -Filter * -SearchBase $OUpath | Select-object DistinguishedName, DNSHostName, Name | Export-Csv -NoType $ExportPath

$OUpath = 'OU=Labs,OU=Windows_10,OU=Workstations,OU=Computers,DC=SAGE,DC=EDU'
$ExportPath = '.\labs_in_ou.txt'
Get-ADComputer -Filter * -SearchBase $OUpath | Select-object DNSHostName | Out-File -FilePath $ExportPath

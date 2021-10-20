$Joined = [DateTime]::Today.AddDays(-7)
Get-ADComputer -Filter 'WhenCreated -ge $joined' -Properties DNSHostName, whenCreated | Format-Table Name,whenCreated,distinguishedName -Autosize -Wrap

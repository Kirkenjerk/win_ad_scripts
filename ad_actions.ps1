#Checks if the PSWinReporting module is present, and if not, downloads and installs it.

if (Get-Module -ListAvailable -Name PSWinReportingV2) {
    Write-Host "Module exists, continuing"
} 
else {
    Write-Host "Module does not exist, installing"
    Install-Module PSWinReportingV2 -Force
}

# Creates file with results of report.
Find-Events -Report ADGroupMembershipChanges -DatesRange Last30days -Servers A1.sage.edu, BBQ.sage.edu, Ragu.sage.edu, Soy.sage.edu | Format-Table -AutoSize

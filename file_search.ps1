
# Define paths for the output .csv file and the path you wish to search recursively.
$outputfile = "C:\Scripts\Located-Files.csv"
$searchpath = "E:\"
 
# Do the search!
Get-ChildItem -Force $searchpath -include *.mp3,*.wma,*.wmv,*.aac,*.avi,*.mp4,*.3gp,*.mkv -Recurse | Where-Object { ($_.PSIsContainer -eq $false) } | Select-Object Name,Directory,Length | Export-Csv $outputfile

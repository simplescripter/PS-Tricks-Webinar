# Query AD for a list of computer names:

Get-ADComputer -Filter * | Select-Object -ExpandProperty Name

# Store the list in a variable:

$systems = Get-ADComputer -Filter * | Select-Object -ExpandProperty Name

# Save the list to a file:

Get-ADComputer -Filter * | Select-Object -ExpandProperty Name | Out-File E:\systems.txt

# Create the list from a network query and store it in a variable:

$systems = ((net view | Select-String '\\\\') -replace '\\','').Trim()

# Import the computer names from a .CSV file and store the names in a variable:

$systems = Import-Csv E:\systems.CSV
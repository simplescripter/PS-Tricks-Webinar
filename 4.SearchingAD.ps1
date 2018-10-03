# Find stale user accounts



# Return a list of machines

Get-ADComputer -Filter * | Select -ExpandProperty Name

# Return a list of machines grouped by operating system

Get-ADComputer -Filter * -Properties * | Sort-Object OperatingSystem, LastLogonDate | Format-Table Name, IPv4Address, Enabled, LastLogonDate -GroupBy OperatingSystem
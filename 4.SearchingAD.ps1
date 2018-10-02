# Return a list of machines grouped by operating system

Get-ADComputer -Filter * -Properties * | Sort-Object OperatingSystem, LastLogonDate | Format-Table Name, IPv4Address, Enabled, LastLogonDate -GroupBy OperatingSystem
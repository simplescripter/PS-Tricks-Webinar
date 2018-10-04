# Find stale user accounts:

Get-ADUser -Filter * -Properties LastLogonDate | Sort-Object LastLogonDate -Descending | Select-Object Name,LastLogonDate

# Find Locked-Out Sales User Accounts and Unlock Them:

Search-ADAccount -LockedOut -SearchBase 'OU=Sales,DC=Adatum,DC=Com' | Select-Object DistinguishedName,LockedOut,LastLogonDate

Search-ADAccount -LockedOut -SearchBase 'OU=Sales,DC=Adatum,DC=Com' | ForEach-Object {Unlock-ADAccount -Identity $_.DistinguishedName}

# Return a list of machines:

Get-ADComputer -Filter * | Select-Object -ExpandProperty Name

# Return a list of machines grouped by operating system:

Get-ADComputer -Filter * -Properties * | Sort-Object OperatingSystem, LastLogonDate | Format-Table Name, IPv4Address, Enabled, LastLogonDate -GroupBy OperatingSystem
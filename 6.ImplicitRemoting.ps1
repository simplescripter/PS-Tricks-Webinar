# Establish an authenticated session with the machine where the PowerShell module is installed:

$session = New-PSSession -ComputerName LON-DC1 -Credential (Get-Credential)

# Import the module from the remote session into the local PowerShell session:

Import-Module -PSSession $session -Name ActiveDirectory
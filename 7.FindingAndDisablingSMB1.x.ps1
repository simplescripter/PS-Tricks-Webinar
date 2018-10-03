# Discover whether systems are running the inseure SMB 1.x dialect:

Invoke-Command (Get-Content C:\computers.txt) {Get-WindowsOptionalFeature -Online -FeatureName SMB1Protocol} | Select-Object PSComputerName, State

# Remove SMB 1.x:

Invoke-Command (Get-Content C:\computers.txt) {Disable-WindowsOptionalFeature -Online -FeatureName SMB1Protocol -NoRestart; Restart-Computer}


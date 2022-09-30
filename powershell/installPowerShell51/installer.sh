az vm run-command invoke \
	--resource-group "DEFAULTGROUP01" \
	--name "sfcgvm11" --command-id 'RunPowerShellScript' \
	--scripts '[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Invoke-WebRequest -Uri "https://raw.githubusercontent.com/smartit-ar/iaasSmartFran/main/powershell/installPowershell51.ps1" -OutFile "C:\Temp\installPowershell51.ps1"' \
	--query 'value[*].message'
	
az vm run-command invoke \
	--resource-group "DEFAULTGROUP01" \
	--name "sfcgvm11" --command-id 'RunPowerShellScript' \
	--scripts 'powershell.exe "C:\Temp\installPowershell51.ps1"' \
	--query 'value[*].message'
#!/bin/bash

VMNAME='sfcgvm12'
RESGROUP='DEFAULTGROUP01'
URI_DOWNLOAD='https://raw.githubusercontent.com/smartit-ar/iaasSmartFran/main/powershell/installPowerShell51/installPowershell51.ps1'
URI_SCRIPT_PATH='C:\Temp\installPowershell51.ps1'
URI_PRESET='[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12'

az vm run-command invoke \
	--resource-group $RESGROUP \
	--name $VMNAME \
	--command-id 'RunPowerShellScript' \
	--scripts "'"${URI_PRESET}"; Invoke-WebRequest -Uri \""${URI_DOWNLOAD}"\" -OutFile "${URI_SCRIPT_PATH}"'" \
	--query "'value[*].message'"



az vm run-command invoke \
	--resource-group $RESGROUP \
	--name $VMNAME \
	--command-id "RunPowerShellScript" \
	--scripts "'powershell.exe \""${URI_SCRIPT_PATH}"\"'" \
	--query "'value[*].message'"
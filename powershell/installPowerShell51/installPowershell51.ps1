#Requires -Version 4.0
#Runas SYSTEM / admin
try{
    $params=@{
        Uri="https://download.microsoft.com/download/6/F/5/6F5FF66C-6775-42B0-86C4-47D41F2DA187/Win8.1AndW2K12R2-KB3191564-x64.msu"
        OutFile="C:\Temp\Win8.1AndW2K12R2-KB3191564-x64.msu"
    }
    Invoke-WebRequest @params
    wusa.exe $params.OutFile /quiet /log /norestart
    # Ver en Visor de eventos
    # Install. Source: WUSA
    # Si el codigo de error es 2149842967 indica que 
    # 2149842967 is 0x80240017 in hexadecimal. 
    # According to Windows Update Agent Result Codes, it indicates that this hotfix is not applicable to your server.
}
catch
{
    Write-Host "no se pudo crear el Event `r`n $_"
}
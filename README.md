# devops

## Instalador de Powershell 51 en Windows Server 2012R2

### Script: installPowershell51.ps1

Scripts creado para instalar powershell en una VM Windows Server 2012 R2

El script se descarga a un host remoto, se encuentra alojado en un repo de Azure.
Se lo descarga mediante el comando *Invoke-WebRequest* y se lo almacena en el host para luego llamarlo con el script *installer.sh*.

### Script: installer.sh

Script creado para:

- Descargar el script desde git a una carpeta
- Ejecutar el script y realizar la instalacion

NOTA: el script debe ser mantenido en un entorno linux o bien tener el recaudo de unsar *LF* como codigo de fin de linea / retorno de carro.

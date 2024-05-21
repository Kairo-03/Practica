# Este script se encarga de instalar una impresora en la maquina del usuario
$impresora = Read-Host "Ingrese el nombre de la impresora: "
Import-Module PrintManagement
Install-Printer -Name $impresora -PrintServer "mormsysoft01" -Credential (Get-Credential)

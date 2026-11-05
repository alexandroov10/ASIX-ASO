param(
    [Parameter(Mandatory=$true)]
    [string]$nomOu,

    [Parameter(Mandatory=$false)]
    [string]$ruta = "DC=musiccloud, DC=local"
)
try {
    $ou = Get-ADObject -Identity "$ruta" -ErrorAction Stop
}
catch {
    exit
}
try {
    $ou = Get-ADOrganitzationalUnit -Identity "OU=$nomOu,$ruta" -ErrorAction Stop
}
catch {
    $ou = $null
}
if (-not $OU) {
    New-ADOrganizationalUnit -Name $nomOu -Path $ruta
}
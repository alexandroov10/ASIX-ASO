param(
    [Parameter(Mandatory=$true)]
    [string]$nomOU,
    [Parameter(Mandatory=$true)]
    [string]$ruta
)
try {
    $OU = Get-ADOrganizationalUnit -Identity "OU=$nomOU,$ruta" -ErrorAction Stop
}
catch{
    $OU = $null
}
if (-not $OU) {
    New-ADOrganizationalUnit -Name $nomOU -Path $ruta
}
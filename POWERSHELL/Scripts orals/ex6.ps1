param(
    [Parameter(Mandatory=$true)]
    [string[]]$nomOU,
    [Parameter(Mandatory=$false)]
    [string]$ruta = "DC=musiccloud,DC=local"
)
try {
    Get-ADObject -Identity $ruta -ErrorAction Stop
}
catch {
    exit
}

foreach ($unitat in $nomOU) {
    $existeix = $true
    try {
        Get-ADOrganizationalUnit -Identity "OU=$unitat,$ruta" -ErrorAction Stop
    }
    catch {
        $existeix = $false
    }

    if ($existeix -eq $false) {
        try {
            New-ADOrganizationalUnit -Name $unitat -Path $ruta -ErrorAction Stop
        }
        catch {
        }
    }
}
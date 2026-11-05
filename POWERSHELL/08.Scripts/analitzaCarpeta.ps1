$elements = Get-ChildItem
Write-Host "Nombre total d'elements: $($elements.Count)"
$fitxers_size = Get-ChildItem | Sort-Object Length -Descending | Select-Object Name, Length -First 5
Write-host "5 Fitxers mes grans:"
$fitxers_size
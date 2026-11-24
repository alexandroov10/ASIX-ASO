# CPU
Write-Host "========== CPU =========="
$tots_processos = Get-Process
$processos = $tots_processos | Sort-Object CPU -Descending | Select-Object Name, Id, CPU -First 5
$processos | Format-Table

# SERVEIS
Write-Host "========== SERVEIS =========="
$serveis = Get-Service
$total_serveis = $serveis.Count
Write-Host "Total de serveis: $total_serveis"

$serveis_running = $serveis | Where-Object Status -eq 'Running'
$total_running = $serveis_running.Count
Write-Host "Serveis en execucio: $total_running"

$serveis_stopped = $serveis | Where-Object Status -eq 'Stopped'
$total_stopped = $serveis_stopped.Count
Write-Host "Serveis no executats: $total_stopped"

Write-Host "========== Fitxers =========="
$fitxers_size = Get-ChildItem | Sort-Object Length -Descending | Select-Object Name, Length -First 3
Write-host "3 Fitxers mes grans:"
$fitxers_size | Format-Table

Write-Host "========= Resum ============="
$procesos_analitzats = Get-Process
$total_procesos = $procesos_analitzats.count
Write-Host "Procesos analitzats $total_procesos"
$serveis_analitzats = Get-Service
$total_serveis = $serveis_analitzats.count
Write-Host "Serveis analitzats $total_serveis"
$fitxers_analitzats = (Get-ChildItem -File).Count
Write-Host "Fitxers analitzats $fitxers_analitzats"
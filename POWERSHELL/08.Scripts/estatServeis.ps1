Write-Host "========== ESTAT DELS SERVEIS =========="

$serveis = Get-Service
$total_serveis = $serveis.Count
Write-Host "Total: $total_serveis"

$serveis_running = $serveis | Where-Object Status -eq 'Running'
$total_running = $serveis_running.Count
Write-Host "Running: $total_running"

$serveis_stopped = $serveis | Where-Object Status -eq 'Stopped'
$total_stopped = $serveis_stopped.Count
Write-Host "Stopped: $total_stopped"
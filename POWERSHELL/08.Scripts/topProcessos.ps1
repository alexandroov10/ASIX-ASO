Write-Host "========== Processos amb més consum de CPU =========="
$processos = Get-Process | Sort-Object CPU -Descending | Select-Object Name, Id, CPU -First 10
$processos | Format-Table
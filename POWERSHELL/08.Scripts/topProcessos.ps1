Write-Host "========== Processos amb més consum de CPU =========="

$tots_processos = Get-Process
$processos = $tots_processos | Sort-Object CPU -Descending | Select-Object Name, Id, CPU -First 10
$processos | Format-Table

$total_processos = $tots_processos.Count
Write-Host "Nombre total de processos: $total_processos"
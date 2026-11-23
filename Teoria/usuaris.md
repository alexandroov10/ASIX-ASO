**Exemple**
```powershell
New-ADUser `
    -Name "Aina Ciruans" `
    -SamAccountName "aciurans" `
    -DisplayName "Aina Ciruans" `
    -UserPrincipalName "aciruans@musiccloud.local" `
    -EmailAddress "aciruans@musiccloud.local" `
    -AccountPassword (ConvertTo-SecureString "musiccloud" -AsPlainText) `
    -Enabled $true `
    -Path "OU=MusicCloud, DC=musiccloud, DC=local"

Set-ADUser -Identity aciuransx -Enabled $false
Disabled-ADAccount

$novaContrasenya = Read-Host "Introdueix la nova contrasenya" -AsSecureString

Set-ADAccountPassword -Identity "aciurans" `
    -Reset `
    -NewPassword $novaContrasenya
Add-ADGroupMemeber `
    -Identity "GG-Comercial" `
    -Members "lvidal"

Get-ADPrincipalGroupMembership -Identity "aciurans"

```
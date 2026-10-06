# El Pipeline a PowerShell (`|`)

El pipeline (`|`) és el concepte fonamental de PowerShell. A diferència d'altres shells on viatja text pla, **a PowerShell el pipe envia OBJECTES complets de .NET**.

---

## 1. Text vs Objectes

* **Bash / CMD:** Envia caràcters de text. Cal processar cadenes amb eines auxiliars (`grep`, `awk`, `sed`).
* **PowerShell:** Envia instàncies completes amb **propietats** (dades) i **mètodes** (accions).

Quan executes `Get-Process`, s'emeten objectes de tipus `System.Diagnostics.Process`.

---

## 2. Inspecció prèvia: `Get-Member`

Abans de filtrar o manipular, cal conèixer les propietats i mètodes de l'objecte:

```powershell
Get-Process | Get-Member
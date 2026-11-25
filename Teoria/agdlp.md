# AGDLP
 
Estratègia per assignar permisos en Active Directory.
 
## Què vol dir
 
| Lletra | Significat | Àmbit / funció |
|--------|------------|----------------|
| **A** | Account (compte) | Usuari |
| **G** | Global (grup global) | Agrupa comptes del domini |
| **DL** | Domain Local (grup local de domini) | Es dona permisos sobre el recurs |
| **P** | Permisos | S'assignen al grup DL |
 
**Flux:** `Account → Global → Domain Local → Permisos`
 
- Els **comptes** s'afegeixen a un **grup global**.
- El **grup global** s'afegeix a un **grup local de domini**.
- El **grup local de domini** rep els **permisos** sobre el recurs.
## Variant AGUDLP
 
`Account → Global → Universal → Domain Local → Permisos`
 
- Igual que AGDLP, però amb un **grup universal** entre el global i el local de domini.
- Útil quan hi ha diversos dominis (bosc).
## Exemple pràctic
 
Carpetes compartides: **Producció** i **Ensamblatge**.
 
### Grups
 
| Tipus | Producció | Ensamblatge |
|-------|-----------|-------------|
| Grup global (GG) | `GG_Producció` | `GG_Ensamblatge` |
| Grup local de domini (DL) | `DL_Producció_R` / `DL_Producció_RW` | `DL_Ensamblatge` |
 
### Usuaris
 
Maria i Anna → membres del grup global `GG_Producció`.
 
### Cadena correcta
 
```
Maria, Anna  →  GG_Producció  →  DL_Producció_R(W)  →  Carpeta Producció
```
 
```
GG_Ensamblatge  →  DL_Ensamblatge  →  Carpeta Ensamblatge
```
 
### Què NO s'ha de fer (✗ a la pissarra)
 
- ✗ Donar permisos **directament als usuaris** (Maria, Anna) sobre la carpeta.
- ✗ Donar permisos **directament al grup global** sobre la carpeta.
Sempre s'ha de passar pel **grup local de domini (DL)**, que és el que té els permisos sobre la carpeta.

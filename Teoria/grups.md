# Grups

## Tipus

| Tipus | Ús |
|---|---|
| **Seguretat** | Assignar permisos |
| **Distribució** | Llistes de distribució o de correu |

## Àmbits

| Àmbit | Descripció |
|---|---|
| **Domini Local** | Assignar permisos |
| **Global** | Estructurals. Només objectes del propi domini |
| **Universal** | Pot fer les dues coses, tant el local com el global |

## Nomenclatura del grup

El nom del grup es forma amb l'**àmbit** i la **funció**:

```
<Àmbit>_<Funció>
```

Àmbits possibles:

- `GL`
- `GG`
- `GV`

Exemples:

- `GG_Informatica`
- `GG_Usuaris_Informatica`

## Comanda per crear un grup

```powershell
New-ADGroup -Name GG_Informatica -SamAccountName <nom> -Path <ruta> -GroupScope Global
```
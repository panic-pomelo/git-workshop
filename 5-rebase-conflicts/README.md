# Ejercicio 5 - Rebase + conflicts

> Leer [setup general de ejercicios](../README.md#ejercicios)

Estabas trabajando en equipo en una receta de pastas en tu `feature`, pero un compañero mergeó a master una parte de la receta, quedando el feature desactualizado y introduciendo conflictos.

- Inspeccionar los commits de todos los branches (`gloga`)
- Actualizar `feature` con `main` (`rebase`, no hace falta `-i`)
  - Resolver los conflictos
  
  > **Tip**: En cada paso del rebase, luego de cada comando, usar `git status` y ver qué nos dice git. Suele ayudar.

- Hacer un fast forward merge
- Pushear al remoto

Extra: A la hora de resolver los conflictos, probar _abortar_ el rebase.

## Resolución (¡Spoilers!)

Para hacer fast forward merge

- `git checkout master`
- `git merge --ff-only feature`

## Extra - merge

a. Actualizar el `feature` con `main` mediante un 3-way merge en vez de `rebase`.
b. Sin actualizar, mergear `feature` a `main` con un 3-way merge.
  - ¿Es lineal la historia resultante?
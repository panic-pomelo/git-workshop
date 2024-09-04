# Ejercicio 2 - Reset

> Leer [setup general de ejercicios](../README.md#ejercicios)

En un feature, se trabajó en los archivos `debt.go` y `creditline.go`, pero queremos emprolijar los commits antes de mandar a review.

- Inspeccionar los commits con `glo`, hubo cambios en `debt.go` y `creditline.go`
- Usar `git reset` con el modo adecuado (`--soft` / `--mixed` / `--hard`) para reescribir la historia del branch y dejarla prolija
  - Pensar que `debt.go` y `creditline.go` corresponden a features distintas pero se trabajaron en el mismo branch
  - ¿Cuántos commits deberían ser?
- Pushear al remoto

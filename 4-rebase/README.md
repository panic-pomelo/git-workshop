# Ejercicio 4 - Rebase

> Leer [setup general de ejercicios](../README.md#ejercicios)

- Inspeccionar los commits del branch
  - Recomendación: usar `git log -p` / `git show` para ver qué cambios introdujo cada commit
- Cambiar el mensaje del `<mensaje erróneo>`
  - Ver el contenido del commit para ver qué mensaje debería tener
- Juntar el paso 1 con su fix
- Pushear al remoto

Se puede hacer en un solo `rebase` o con dos

## Extra a.

Deshacer el `rebase` usando el `reflog`.

## Extra b.

Podríamos considerar que todos los commits deberían ser uno solo. Squashear todos con rebase. Probar con `fixup` y con `squash`.

## Extra c.

Resolver el [ejercicio 2](../2-reset/) con `rebase -i` y los comandos `fixup` y `reword`

> **Vim Tips**:
> - Para mover líneas de lugar: pueden usar `dd` para cortar una línea y `p` para pegarla debajo
> - Para cambiar muchos `pick`: desde modo comando, `ce` corta la palabra (cut + end) y permite escribir el nuevo comando. Se pueden repetir la ejecución de comandos de vim en la línea de abajo con `.`

## Extra d.

- Correr nuevamente el setup
- Investigar sobre `git commit --fixup` y `git rebase -i --autosquash`,
- Editar el paso 2, y juntar con el commit que lo introduce (el del mensaje erróneo) usando esos dos comandos.

Fuente: https://thoughtbot.com/blog/autosquashing-git-commits
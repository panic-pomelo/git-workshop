# Git workshop - Rewriting history

Dictado para el equipo de Lending el 5/9/2024.

## Pre requisitos!!

### `push.autoSetupRemote`

Para no tener que hacer el `--set-upstream` en el push

```bash
git config --global --add --bool push.autoSetupRemote true
```

### `zsh` / alias útiles

Zsh es más cómodo que bash, y OhMyZsh tiene varios álias muy útiles para trabajar con git, por ejemplo:

```bash
alias gloga = "git log --oneline --decorate --graph --all"
alias glo = "git log --oneline --decorate"
```

- [Instalación Oh My Zsh](https://ohmyz.sh/)
- [Cheat sheet de aliases de git](https://kapeli.com/cheat_sheets/Oh-My-Zsh_Git.docset/Contents/Resources/Documents/index)


## Ejercicios

Cada ejercicio está en un directorio separado y tiene su script de setup `setup.sh`. Para resolverlos,

- Ir a la carpeta del ejercicio
- Ejecutar el script de setup `sh setup.sh`
  - Genera los directorios (repos) `exercise` y `exercise-origin.git`
  - Agrega los commits de la situación a resolver
- Ir al directorio del ejercicio `cd exercise`
- Resolver!

Recomendaciones:

- Si quieren probar devuelta el ejercicio o se mandaron alguna macana difícil de recuperar, corran el `setup.sh` de vuelta y se regenera todo.
- Entre comandos usen `git status`, `git log`, etc. para saber qué está pasando.

Listado de ejercicios

1. [Amend](1-amend)
2. [Reset](2-reset)
3. [Reflog](3-reflog)
4. [Rebase](4-rebase)
5. [Rebase conflicts](5-rebase-conflicts)

## Recursos adicionales

Conceptuales

- [Explain git in simple words](https://xosh.org/explain-git-in-simple-words/)
- [Git for computer
  scientists](https://eagain.net/articles/git-for-computer-scientists/), es
  una explicación corta del modelo de git con términos que se suelen ver en
  una carrera de computación (digrafos, etc.)
- [Git from the bottom up](https://jwiegley.github.io/git-from-the-bottom-up/)
  brinda una explicación detallada de los detalles de implementación de git
  más allá del modelo. Muestra con comandos de git como leer y manipularlo.

Generales

- [Missing Semester - Version
  control](https://missing.csail.mit.edu/2020/version-control/).

  [Missing semester](https://missing.csail.mit.edu/) es un curso muy bueno del
  MIT que enseña todo lo que no dan en el programa de la universidad.

- [Pro git](https://git-scm.com/book/en/v2): Libro oficial de git. Los
  capítulos 1-5 muestran lo suficiente para usar git de forma competente, y
  los del final tienen material avanzado interesante.

- [Tutoriales de
  Atlassian](https://www.atlassian.com/git/tutorials/what-is-version-control):
  serie de tutoriales de todos los niveles explicadas de una forma muy clara.

- [Learn Git Branching](https://learngitbranching.js.org/): Juego en la web
  para aprender git.

- [Git ready](https://gitready.com/): Tips de git.
- [Mislav Marohnić - A few git tips you didn't know
  about](https://mislav.net/2010/07/git-tips/)

Commits

- [tpope - A Note About Git Commit
  Messages](https://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html)
- [cbeams - How to Write a Git Commit Message](https://cbea.ms/git-commit/):
  **La biblia** de como escribir buenos mensajes de commits. Siempre lo usamos
  como referencia. **Lectura recomendada**.
- [thoughtbot - 5 Useful tips for a better commit
  message](http://robots.thoughtbot.com/5-useful-tips-for-a-better-commit-message)
- [thoughtbot - Write good commit messages by blaming
  others](https://thoughtbot.com/blog/write-good-commit-messages-by-blaming-others):
  para estar motivados a escribir buenos mensajes de commits, debemos entender
  el valor que proveen. Este blog post cuenta como usar git blame, una de las
  herramientas que se beneficia de tener buenos mensajes de commit?.
- [Atomic commits](https://www.freshconsulting.com/insights/blog/atomic-commits/)

Leyendo historia de un repo

- [Mislav Marohnić - Every line of code is always
  documented](https://mislav.net/2014/02/hidden-documentation/): Como leer o
  hacer *spelunking* de la historia de un repositorio.

Manipular historia
- [Adventures with git
  rebase](https://thoughtbot.com/blog/rebasing-your-branch-with-git-rebase-onto):
  caso de uso para `git rebase --onto` (útil cuando hay un feature saliendo de
  un feature y se mergea el primero).

- [A gentle introduction to interactive git rebase](https://dev.to/divrhino/a-gentle-introduction-to-interactive-git-rebase-85c)

  Blog post muy bueno que cuenta en detalle las diferentes opciones que nos
  brinda el rebase interactivo.

- [Atlassian - Undoing Commits & Changes](https://www.atlassian.com/git/tutorials/undoing-changes)
- [Atlassian - Rewriting
  History](https://www.atlassian.com/git/tutorials/rewriting-history)

    Como usar rebase, amend, reflog, etc. explicado muy claro. **Lectura
    recomendada**.

- [Pro git - Git tools, rewriting
  history](http://git-scm.com/book/en/v2/Git-Tools-Rewriting-History)

Code reviews

- [Pull Request
  Etiquette](https://gist.github.com/mikepea/863f63d6e37281e329f8)
- [thoughtbot - Code review
  guide](https://github.com/thoughtbot/guides/tree/main/code-review)

Misceláneos

- [Git Fixup](https://sethrobertson.github.io/GitFixUm/fixup.html) un *choose your own adventure* pero para arreglar quilombos en git
- [Oh shit, git!?](https://ohshitgit.com/) como arreglar errores usuales.
- [Git flight rules](https://github.com/k88hudson/git-flight-rules)

  > Flight Rules are the hard-earned body of knowledge recorded in manuals
  > that list, step-by-step, what to do if X occurs, and why. Essentially,
  > they are extremely detailed, scenario-specific standard operating
  > procedures. [...]

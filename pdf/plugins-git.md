# <span class="red">Работа с Git в Neovim</span>

---

> 🌐 Быстрые ссылки открывают PDF на GitHub (требуется интернет)

## <span class="blue">📚 Быстрые ссылки</span>

🌐 <a href="https://github.com/gumirus/nvim/raw/main/pdf/plugins.pdf">Все плагины (главная)</a><br>
🌐 <a href="https://github.com/gumirus/nvim/raw/main/pdf/plugins-nvimtree.pdf">Файловый менеджер</a><br>
🌐 <a href="https://github.com/gumirus/nvim/raw/main/pdf/plugins-lsp.pdf">LSP и автодополнение</a><br>
🌐 <a href="https://github.com/gumirus/nvim/raw/main/pdf/plugins-ux.pdf">UX-плагины</a>

---

# <span class="red">Подробный гайд по работе с Git в Neovim</span>

## <span class="blue">Зачем нужен Git?</span>

Git — это современная система контроля версий, которая позволяет:

- Хранить историю изменений кода
- Работать в команде и не терять свои наработки
- Безопасно экспериментировать с ветками
- Откатываться к любому состоянию проекта
- Сливать, сравнивать, анализировать изменения

В Neovim git интегрируется через плагины, что делает работу с кодом ещё удобнее и быстрее.

---

## <span class="blue">Плагины для Git в Neovim</span>

### <span class="green">lazygit.nvim</span>

Мощный git-UI прямо в Neovim:

- <kbd>Space</kbd> + <kbd>lg</kbd> — открыть <span class="cmd">lazygit</span>
- Все действия (stage, commit, push, pull, merge, rebase и др.) выполняются внутри интерфейса LazyGit.

---

## <span class="blue">Основные команды Git</span>

| Команда                                         | Описание                               |
| ----------------------------------------------- | -------------------------------------- |
| <span class="cmd">git init</span>               | Инициализация репозитория              |
| <span class="cmd">git clone URL</span>          | Клонировать репозиторий                |
| <span class="cmd">git status</span>             | Текущее состояние файлов               |
| <span class="cmd">git add file</span>           | Добавить файл в индекс (stage)         |
| <span class="cmd">git commit -m "msg"</span>    | Зафиксировать изменения (commit)       |
| <span class="cmd">git log</span>                | История коммитов                       |
| <span class="cmd">git diff</span>               | Показать различия                      |
| <span class="cmd">git branch</span>             | Список веток                           |
| <span class="cmd">git checkout branch</span>    | Переключиться на ветку                 |
| <span class="cmd">git merge branch</span>       | Слить ветку                            |
| <span class="cmd">git pull</span>               | Получить и влить изменения с сервера   |
| <span class="cmd">git push</span>               | Отправить изменения на сервер          |
| <span class="cmd">git stash</span>              | Спрятать текущие изменения             |
| <span class="cmd">git tag v1.0</span>           | Создать тег                            |
| <span class="cmd">git reset --hard HEAD^</span> | Откатить состояние на коммит назад     |
| <span class="cmd">git rebase branch</span>      | Перенести коммиты поверх другой ветки  |
| <span class="cmd">git cherry-pick hash</span>   | Взять отдельный коммит в текущую ветку |
| <span class="cmd">git revert hash</span>        | Откатить отдельный коммит              |

---

## <span class="blue">Практические примеры команд</span>

### 1. Клонирование репозитория

```sh
git clone https://github.com/username/project.git
```

### 2. Создание новой ветки и переход в неё

```sh
git checkout -b feature/my-feature
```

### 3. Добавление и коммит изменений

```sh
git add .
git commit -m "Добавил новую фичу"
```

### 4. Слияние ветки (merge)

```sh
git checkout main
git merge feature/my-feature
```

### 5. Перебазирование (rebase)

```sh
git checkout feature/my-feature
git rebase main
```

### 6. Откат последнего коммита (оставить изменения в рабочей директории)

```sh
git reset --soft HEAD~1
```

### 7. Восстановление утерянного коммита

```sh
git reflog
git checkout <hash>
```

### 8. Быстрое исправление последнего коммита

```sh
git commit --amend -m "Новый текст коммита"
```

### 9. Спрятать и вернуть незакоммиченные изменения

```sh
git stash
git stash pop
```

### 10. Просмотр, кто изменил строку

```sh
git blame main.lua
```

---

## <span class="blue">Советы и лайфхаки для реальной работы</span>

- **Работай в отдельных ветках** для каждой задачи/фичи — это упростит ревью и откат.
- **Перед слиянием всегда делай** `git pull --rebase` — так история будет чище.
- **Не бойся экспериментировать:** если что-то пошло не так — всегда есть `git reflog` и `git reset`.
- **Используй теги** для релизов: `git tag v1.0` — удобно возвращаться к стабильным версиям.
- **Открывай lazygit в отдельном сплите или табе для удобства.**
- **Перед удалением ветки** всегда проверяй, что она влитa: `git branch --merged`.
- **Не забывай про .gitignore** — не коммить лишние файлы (node_modules, .env и т.д.).
- **Для сложных конфликтов** используй визуальные инструменты (lazygit, VSCode, meld).
- **Часто коммить — хорошо!** Мелкие коммиты проще откатывать и анализировать.
- **Пиши осмысленные сообщения к коммитам** — это поможет тебе и команде в будущем.

---

## <span class="blue">Видеоуроки и интерактивные тренажёры</span>

### <span class="orange">YouTube</span>

- [Learn Git In 15 Minutes (ENG)](https://www.youtube.com/watch?v=USjZcfj8yxE)
- [Git Tutorial for Beginners (ENG)](https://www.youtube.com/watch?v=JOIL6gof2BA)
- [Git and GitHub Tutorial for Beginners [11 Hours] (ENG)](https://www.youtube.com/watch?v=3FKrszHcIsA)

### <span class="orange">VK</span>

- [Git для новичков — подборка видео](https://vk.com/video?q=git%20%D0%BE%D0%B1%D1%83%D1%87%D0%B5%D0%BD%D0%B8%D0%B5)

### <span class="orange">RuTube</span>

- На RuTube актуальных видео по git пока нет, но можно искать по запросу: [git обучение](https://rutube.ru/search?query=git%20%D0%BE%D0%B1%D1%83%D1%87%D0%B5%D0%BD%D0%B8%D0%B5)

### <span class="orange">Интерактивные тренажёры</span>

- [GitHowTo — интерактивный курс (RU)](https://githowto.com/ru)
- [Learn Git Branching — тренажёр](http://pcottle.github.io/learnGitBranching/)

### <span class="orange">Книги и гайды</span>

- [Pro Git Book (RU)](http://git-scm.com/book/ru/v2)
- [Git Cheat Sheet (ENG, PDF)](https://training.github.com/downloads/github-git-cheat-sheet.pdf)

---

## <span class="blue">Ещё больше примеров команд Git</span>

### Работа с ветками

```sh
# Показать все ветки
git branch -a

# Переименовать текущую ветку
git branch -m new-name

# Удалить локальную ветку
git branch -d old-branch

# Удалить удалённую ветку
git push origin --delete old-branch

# Сравнить две ветки
git diff main..feature
```

### Работа с удалёнными репозиториями

```sh
# Добавить новый remote
git remote add upstream https://github.com/other/repo.git

# Показать все remotes
git remote -v

# Получить изменения из другого remote
git fetch upstream

# Слить изменения из remote-ветки
git merge upstream/main
```

### Слияния и rebase

```sh
# Слить ветку с fast-forward
git merge --ff-only feature

# Откатить merge-коммит
git revert -m 1 <merge-commit-hash>

# Интерактивный rebase последних 5 коммитов
git rebase -i HEAD~5

# Прервать rebase
git rebase --abort
```

### Stash и восстановление

```sh
# Сохранить изменения с сообщением
git stash save "work in progress"

# Показать список stash
git stash list

# Посмотреть содержимое stash
git stash show -p stash@{0}

# Применить stash, но не удалять из списка
git stash apply stash@{0}

# Удалить все stash
git stash clear
```

### Работа с файлами

```sh
# Удалить файл из индекса, но оставить на диске
git rm --cached file.txt

# Восстановить файл из последнего коммита
git checkout HEAD -- file.txt

# Показать изменения только в одном файле
git diff main.lua
```

### История и поиск

```sh
# Показать историю только по файлу
git log --oneline -- file.txt

# Найти коммиты по автору
git log --author="Ivan"

# Найти коммиты по ключевому слову
git log --grep="bugfix"

# Показать изменения между двумя коммитами
git diff hash1..hash2

# Найти коммит, где появилась строка
git log -S"someFunction"
```

### Теги и релизы

```sh
# Показать все теги
git tag

# Создать аннотированный тег
git tag -a v2.0 -m "Release 2.0"

# Отправить теги на сервер
git push --tags

# Удалить тег локально и на сервере
git tag -d v1.0
git push origin :refs/tags/v1.0
```

### Cherry-pick и bisect

```sh
# Взять коммит из другой ветки
git cherry-pick <commit-hash>

# Начать bisect для поиска бага
git bisect start
git bisect bad
git bisect good <hash>
# ... тестируй, отмечай good/bad ...
git bisect reset
```

### Алиасы и настройки

```sh
# Создать алиас для короткой команды
git config --global alias.co checkout

# Показать глобальные настройки
git config --global --list

# Изменить email для текущего репозитория
git config user.email "me@site.com"
```

### .gitignore и очистка

```sh
# Добавить правило в .gitignore
echo 'node_modules/' >> .gitignore

git rm -r --cached node_modules/
git add .gitignore
git commit -m "ignore node_modules"

# Удалить все неотслеживаемые файлы и папки
git clean -fdx
```

### Разное

```sh
# Показать короткую статистику по коммитам
git shortlog -sn

# Показать, кто внёс больше всего изменений
git log --pretty="%an" | sort | uniq -c | sort -nr | head

# Сравнить рабочую директорию с индексом
git diff

# Сравнить индекс с последним коммитом
git diff --cached

# Показать все файлы, изменённые в коммите
git show --name-only <commit-hash>
```

---

**Теперь ты можешь делать всё с git, не выходя из Neovim!**

---

<div align="center">
<span class="green">Подробная документация по git-плагинам для Neovim gumirus</span>
</div>

---

## <span class="blue">🌐 Полезные гайды и ссылки</span>

- [Neovim как IDE с git-интеграцией (GitHub, англ.)](https://github.com/rvbug/neovim) — подробный репозиторий с примерами, настройкой git-плагинов, горячими клавишами и советами по работе с git прямо в Neovim.

- [GitHub Docs: Git workflows](https://docs.github.com/en/get-started/getting-started-with-git/git-workflows) — официальная документация по git-воркфлоу и best practices.

- [GitHub Flow (англ.)](https://githubflow.github.io/) — современный подход к работе с git и GitHub.

---

# 🚀 Быстрая инструкция: Как закоммитить и запушить через LazyGit

1. **Открой LazyGit**

   - В Neovim: `:LazyGit` или `<leader>lg`
   - В терминале: `lazygit`

2. **Добавь нужные файлы в stage**

   - Наведи на изменённый файл (стрелками).
   - Нажми <kbd>space</kbd> — строка станет зелёной, появится S.

3. **Сделай коммит**

   - Нажми <kbd>c</kbd>.
   - В верхнем поле напиши коротко, что изменилось (например, `fix: исправил ошибку`).
   - Если нужно — <kbd>Tab</kbd> во второе поле, напиши детали.
   - <kbd>Tab</kbd> до кнопки "Commit", ещё раз <kbd>Tab</kbd> (или <kbd>Enter</kbd>) — коммит сохранится.

4. **Сделай push**

   - Нажми <kbd>Shift+P</kbd> (большая P) — изменения отправятся на GitHub.

5. **Выйди из LazyGit**
   - Нажми <kbd>q</kbd>.

---

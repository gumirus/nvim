<div align="center">

# <span class="red">Работа с Git в Neovim</span>

</div>

---

## 📚 Быстрые ссылки

<a href="https://github.com/gumirus/nvim/raw/main/pdf/plugins.pdf">Все плагины (главная)</a><br>
<a href="https://github.com/gumirus/nvim/raw/main/pdf/plugins-nvimtree.pdf">Файловый менеджер</a><br>
<a href="https://github.com/gumirus/nvim/raw/main/pdf/plugins-lsp.pdf">LSP и автодополнение</a><br>
<a href="https://github.com/gumirus/nvim/raw/main/pdf/plugins-ux.pdf">UX-плагины</a>

---

## <span class="blue">gitsigns.nvim</span>

- <span class="green">Описание:</span> Показывает изменения (hunks) в файлах прямо в редакторе.
- <span class="orange">Горячие клавиши:</span>
  - <kbd>]h</kbd> / <kbd>[h</kbd> — переход к следующему/предыдущему изменению
  - <kbd>&lt;leader&gt;hs</kbd> — добавить изменение в индекс (stage hunk)
  - <kbd>&lt;leader&gt;hr</kbd> — откатить изменение (reset hunk)
  - <kbd>&lt;leader&gt;hp</kbd> — показать diff
  - <kbd>&lt;leader&gt;hb</kbd> — blame для строки
- <span class="purple">Совет:</span> Используй визуальный режим для stage/reset нескольких строк!

---

## <span class="blue">lazygit.nvim</span>

- <span class="green">Описание:</span> Открывает мощный git-UI прямо в Neovim.
- <span class="orange">Горячая клавиша:</span> <kbd>Space</kbd> + <kbd>lg</kbd>
- <span class="purple">Возможности:</span>
  - Просмотр истории коммитов
  - Stage/unstage файлов и hunks
  - Merge, rebase, push, pull — всё через удобный интерфейс
- <span class="blue">Пример:</span> Открой lazygit, выбери файл, нажми <kbd>space</kbd> для stage, <kbd>c</kbd> для коммита

---

## <span class="red">Лайфхаки</span>

- Можно открывать lazygit в любом сплите или табе
- gitsigns работает даже с незакоммиченными файлами
- Используй blame для отслеживания изменений по авторам

---

<div align="center">
<span class="green">Подробная документация по git-плагинам для Neovim gumirus</span>
</div>

---

## 📚 Быстрые ссылки

<a href="https://github.com/gumirus/nvim/raw/main/pdf/plugins.pdf">Все плагины (главная)</a><br>
<a href="https://github.com/gumirus/nvim/raw/main/pdf/plugins-nvimtree.pdf">Файловый менеджер</a><br>
<a href="https://github.com/gumirus/nvim/raw/main/pdf/plugins-lsp.pdf">LSP и автодополнение</a><br>
<a href="https://github.com/gumirus/nvim/raw/main/pdf/plugins-ux.pdf">UX-плагины</a>

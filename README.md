# [Источник](https://www.josean.com/posts/how-to-setup-neovim-2024)

[📄 PDF: Описание всех плагинов (цветной)](pdf/plugins.pdf)

## 📚 Подробная документация

- [Работа с git](pdf/plugins-git.pdf)
- [Файловый менеджер](pdf/plugins-nvimtree.pdf)
- [LSP и автодополнение](pdf/plugins-lsp.pdf)
- [UX-плагины](pdf/plugins-ux.pdf)

## Есть немного настройки под себя

## Neovim Modern Config (gumirus)

## 📁 Структура

```
.config/nvim/
├── init.lua
├── .luarc.json
├── lua/
│   └── gumirus/
│       ├── core/
│       │   ├── options.lua      # Основные настройки Neovim
│       │   ├── keymaps.lua      # Горячие клавиши
│       │   └── init.lua         # Импорт core-модулей
│       ├── plugins/
│       │   ├── ...              # Плагины (каждый в отдельном файле)
│       │   └── lsp/
│       │       ├── mason.lua    # Автоустановка LSP и инструментов
│       │       └── lspconfig.lua# Настройка LSP
│       └── lazy.lua             # Менеджер плагинов lazy.nvim
└── ...
```

## ⚙️ Основные настройки (`core/options.lua`)

- Абсолютные номера строк
- 2 пробела для табуляции и отступов
- Отключён перенос строк
- Подсветка текущей строки
- Системный буфер обмена
- Цветовая схема: tokyonight (с кастомными цветами)
- Отключён swapfile

## ⌨️ Горячие клавиши (`core/keymaps.lua`)

- Лидер — <kbd>Space</kbd>
- <kbd>jk</kbd> — выход из insert-режима
- <kbd>&lt;leader&gt;nh</kbd> — убрать подсветку поиска
- <kbd>&lt;leader&gt;+</kbd>/<kbd>&lt;leader&gt;-</kbd> — инкремент/декремент числа
- <kbd>&lt;leader&gt;sv</kbd>/<kbd>&lt;leader&gt;sh</kbd> — вертикальный/горизонтальный сплит
- <kbd>&lt;leader&gt;to</kbd>/<kbd>&lt;leader&gt;tx</kbd> — открыть/закрыть таб
- <kbd>&lt;leader&gt;tf</kbd> — открыть буфер в новом табе

## 🧩 Плагины (lazy.nvim)

- **nvim-tree** — файловый менеджер (<kbd>&lt;leader&gt;ee</kbd>)
- **lualine** — статус-бар
- **which-key** — подсказки по клавишам
- **nvim-cmp** — автодополнение
- **telescope** — fuzzy-поиск
- **treesitter** — современная подсветка синтаксиса
- **gitsigns** — git-индикаторы и хоткеи
- **lazygit** — интеграция с lazygit (<kbd>&lt;leader&gt;lg</kbd>)
- **todo-comments** — подсветка TODO/FIXME
- **trouble** — просмотр диагностик
- **surround, substitute, autopairs, comment, bufferline, indent-blankline, vim-maximizer, alpha, auto-session, formatting, linting** — удобства и улучшения
- **LSP** — через mason.nvim и nvim-lspconfig (автоустановка серверов)

## 🚀 Плагины для улучшения UX

- **mini.nvim** — surround, comment, pairs, move (минималистичные, быстрые аналоги популярных плагинов)
- **noice.nvim** + **nvim-notify** — современный UI для сообщений, команд, LSP и красивые уведомления
- **flash.nvim** — супер-быстрый прыжок по тексту (аналог easymotion/hop)
- **better-escape.nvim** — мгновенный выход из insert-режима по <kbd>jk</kbd> или <kbd>jj</kbd>
- **nvim-ufo** — продвинутый folding с поддержкой LSP и Treesitter
- **nvim-colorizer.lua** — подсветка цветов прямо в коде (hex/rgb/hsl)
- **vim-illuminate** — подсветка всех вхождений слова под курсором
- **nvim-scrollbar** — красивая полоса прокрутки с индикацией поиска, ошибок и т.д.

## 🛠️ LSP и инструменты

- Автоматическая установка серверов и инструментов через Mason
- Поддержка: tsserver, html, cssls, tailwindcss, svelte, lua_ls, graphql, emmet_ls, prismals, pyright и др.
- Форматтеры: prettier, stylua, isort, black
- Линтеры: eslint_d, pylint

## 📝 Форматирование и линтинг

- Форматирование: <kbd>&lt;leader&gt;mp</kbd> (через conform.nvim)
- Линтинг: <kbd>&lt;leader&gt;l</kbd> (через nvim-lint)

## 🧠 Особенности

- `.luarc.json` — для корректной работы lua-language-server (не ругается на глобальный `vim`)
- Все настройки и плагины разделены по файлам для удобства

---

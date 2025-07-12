return {
  "kdheepak/lazygit.nvim",
  cmd = {
    "LazyGit",
    "LazyGitConfig",
    "LazyGitCurrentFile",
    "LazyGitFilter",
    "LazyGitFilterCurrentFile",
  },
  -- optional for floating window border decoration
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  -- setting the keybinding for LazyGit with 'keys' is recommended in
  -- order to load the plugin when the command is run for the first time
  keys = {
    { "<leader>lg", "<cmd>LazyGit<CR>", desc = "Open LazyGit" },
  },
  config = function()
    require("lazygit").setup({
      -- Настройки окна
      floating_window = true,
      floating_window_scaling_factor = 0.9, -- 90% размера экрана
      floating_window_border_chars = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
      
      -- Настройки клавиш внутри lazygit
      keymaps = {
        ["<c-r>"] = "refresh",      -- Обновить интерфейс
        ["<c-s>"] = "stash",        -- Быстрый stash
      },
    })

    -- Автозакрытие терминала при выходе
    vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })
  end,
}

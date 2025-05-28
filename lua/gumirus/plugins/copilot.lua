return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = { enabled = true },
      panel = { enabled = true },
      -- добавьте дополнительные настройки, если необходимо
    })
  end,
}

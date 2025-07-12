local M = {}

local last_call = 0

function M.confirm_exit()
  local now = vim.loop.now()
  if now - last_call < 1000 then
    vim.notify("⚠️ Bufferline не поддерживает повторное подтверждение закрытия мышкой. Используйте горячую клавишу для надёжного выхода.", vim.log.levels.WARN)
    return
  end
  last_call = now
  vim.ui.select(
    { "Сохранить и выйти", "Выйти без сохранения", "Отмена" },
    { prompt = "Вы действительно хотите выйти из Neovim?" },
    function(choice)
      if choice == "Сохранить и выйти" then
        vim.cmd("wa | qa")
      elseif choice == "Выйти без сохранения" then
        vim.cmd("qa!")
      end
      -- "Отмена" — ничего не делаем
    end
  )
end

vim.api.nvim_create_autocmd("TabClosed", {
  callback = function()
    if #vim.api.nvim_list_tabpages() == 1 then
      require('gumirus.core.wind').confirm_exit()
    end
  end,
})

return M 
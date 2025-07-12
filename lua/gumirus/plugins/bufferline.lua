return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
    options = {
      mode = "tabs",
      separator_style = "slant",
      close_command = function()
        if #vim.api.nvim_list_tabpages() == 1 then
          require("gumirus.core.wind").confirm_exit()
        else
          vim.cmd("tabclose")
        end
      end,
    },
  },
}

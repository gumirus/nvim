return {
  "folke/tokyonight.nvim",
  priority = 1000,
  config = function()
    local bg = "#011628"
    local bg_dark = "#011423"
    local bg_light = "#143652"
    local bg_search = "#0a64ac"
    local bg_visual = "#275378"
    local fg = "#cbe0f0"
    local fg_dark = "#b4d0e9"
    local fg_gutter = "#527e97"
    local border = "#547998"

    require("tokyonight").setup({
      style = "night",
      on_colors = function(colors) 
        colors.bg = bg
        colors.bg_dark = bg_dark
        colors.bg_float = bg_dark
        colors.bg_highlight = bg_light
        colors.bg_popup = bg_dark
        colors.bg_search = bg_search
        colors.bg_sidebar = bg_dark
        colors.bg_statusline = bg_dark
        colors.bg_visual = bg_visual
        colors.border = border
        colors.fg = fg
        colors.fg_dark = fg_dark
        colors.fg_float = fg
        colors.fg_gutter = fg_gutter
        colors.fg_sidebar = fg_dark
      end
    })
    vim.cmd("colorscheme tokyonight")
  end,
}


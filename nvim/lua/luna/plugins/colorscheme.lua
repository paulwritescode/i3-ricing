return {
  {
    "folke/tokyonight.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- Catppuccin Mocha colors
      local catppuccin_mocha = {
        base = "#1e1e2e",
        mantle = "#181825",
        crust = "#11111b",
        text = "#cdd6f4",
        subtext1 = "#bac2de",
        subtext0 = "#a6adc8",
        surface2 = "#585b70",
        surface1 = "#45475a",
        surface0 = "#313244",
        overlay2 = "#9399b2",
        overlay1 = "#7f849c",
        overlay0 = "#6c7086",
        peach = "#fab387",
        yellow = "#f9e2af",
        green = "#a6e3a1",
        red = "#f38ba8",
        mauve = "#cba6f7",
        pink = "#f5c2e7",
        sky = "#89b4fa",
        teal = "#94e2d5",
        lavender = "#b4befe",
        sapphire = "#74c7ec",
        blue = "#89b4fa",
        maroon = "#eba0ac",
        gold = "#f5c2e7",
      }

      require("tokyonight").setup({
        style = "night",
        on_colors = function(colors)
          colors.bg = catppuccin_mocha.base
          colors.bg_dark = catppuccin_mocha.mantle
          colors.bg_float = catppuccin_mocha.mantle
          colors.bg_highlight = catppuccin_mocha.surface1
          colors.bg_popup = catppuccin_mocha.mantle
          colors.bg_search = catppuccin_mocha.blue
          colors.bg_sidebar = catppuccin_mocha.mantle
          colors.bg_statusline = catppuccin_mocha.mantle
          colors.bg_visual = catppuccin_mocha.surface2
          colors.border = catppuccin_mocha.surface2
          colors.fg = catppuccin_mocha.text
          colors.fg_dark = catppuccin_mocha.subtext1
          colors.fg_float = catppuccin_mocha.text
          colors.fg_gutter = catppuccin_mocha.subtext0
          colors.fg_sidebar = catppuccin_mocha.subtext1

          -- Additional Catppuccin colors you might want to use
          colors.red = catppuccin_mocha.red
          colors.green = catppuccin_mocha.green
          colors.yellow = catppuccin_mocha.yellow
          colors.blue = catppuccin_mocha.blue
          colors.magenta = catppuccin_mocha.mauve
          colors.cyan = catppuccin_mocha.teal
          colors.orange = catppuccin_mocha.peach
          colors.violet = catppuccin_mocha.lavender
        end,
      })
      -- load the colorscheme here
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
}
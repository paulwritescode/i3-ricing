return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local lualine = require("lualine")
        local lazy_status = require("lazy.status") -- to configure lazy pending updates count

        local colors = {
            rosewater = "#f5e0dc",
            flamingo = "#f2cdcd",
            pink = "#f5c2e7",
            mauve = "#cba6f7",
            red = "#f38ba8",
            maroon = "#eba0ac",
            peach = "#fab387",
            yellow = "#f9e2af",
            green = "#a6e3a1",
            teal = "#94e2d5",
            sky = "#89dceb",
            sapphire = "#74c7ec",
            blue = "#89b4fa",
            lavender = "#b4befe",
            text = "#cdd6f4",
            subtext1 = "#bac2de",
            subtext0 = "#a6adc8",
            overlay2 = "#9399b2",
            overlay1 = "#7f849c",
            overlay0 = "#6c7086",
            surface2 = "#585b70",
            surface1 = "#45475a",
            surface0 = "#313244",
            base = "#1e1e2e",
            mantle = "#181825",
            crust = "#11111b",
        }

        -- configure lualine with Catppuccin Macchiato colors
        lualine.setup({
            options = {
                theme = {
                    normal = { c = { fg = colors.text, bg = colors.mantle } },
                    insert = { c = { fg = colors.green, bg = colors.mantle } },
                    visual = { c = { fg = colors.mauve, bg = colors.mantle } },
                    replace = { c = { fg = colors.red, bg = colors.mantle } },
                    command = { c = { fg = colors.peach, bg = colors.mantle } },
                    inactive = { c = { fg = colors.overlay1, bg = colors.surface0 } },
                },
            },
            sections = {
                lualine_b = {
                    {
                        "branch",
                        color = { fg = colors.green }, -- Set Git branch color to green
                    },
                },
                lualine_x = {
                    {
                        lazy_status.updates,
                        cond = lazy_status.has_updates,
                        color = { fg = colors.peach },
                    },
                    { "encoding" },
                    { "fileformat" },
                    { "filetype" },
                },
            },
        })
    end,
}
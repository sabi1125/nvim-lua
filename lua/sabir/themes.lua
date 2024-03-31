return require('packer').startup(function(use)
    -- everforest
    use({
        "neanias/everforest-nvim",
        -- Optional; default configuration will be used if setup isn't called.
        config = function()
            require("everforest").setup(
                {
                    on_highlights = function (hl, palette)
                        hl.DiagnosticError = { fg = palette.none, bg = palette.none, sp = palette.red }
                        hl.DiagnosticWarn = { fg = palette.none, bg = palette.none, sp = palette.yellow }
                        hl.DiagnosticInfo = { fg = palette.none, bg = palette.none, sp = palette.blue }
                        hl.DiagnosticHint = { fg = palette.none, bg = palette.none, sp = palette.green }
                    end })
        end,
    })
    vim.cmd.colorscheme('everforest')

    -- catppuchin
    --use { "catppuccin/nvim", as = "catppuccin", vim.cmd.colorscheme('catppuccin-frappe') }
    
    -- tokyo night
    --use {"folke/tokyonight.nvim"}
    --vim.cmd.colorscheme('tokyonight')
end)

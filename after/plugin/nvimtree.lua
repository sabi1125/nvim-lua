local nvimtree = require("nvim-tree")
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

nvimtree.setup({
    sort = {
        sorter = "case_sensitive",
    },
    view = {
        width = "20%",
    },
    renderer = {
        group_empty = true,
        icons = {
            glyphs = {
                default = " ",
                git = {
                    unstaged = "◯",
                    staged = "◉",
                    deleted = "x",
                    untracked = "?",
                }
            }
        }
    },
    filters = {
        dotfiles = false,
    },
    diagnostics = {
       enable = true,
       show_on_dirs = true,
       icons = {
         hint = "",
         info = "",
         warning = "",
         error = "",
       },
    },
})

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
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
    actions = {
        open_file = {
            quit_on_open = true
        }
    },
})

vim.api.nvim_set_keymap('n', '<leader>t', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>r', ':NvimTreeFocus<CR>', { noremap = true, silent = true })

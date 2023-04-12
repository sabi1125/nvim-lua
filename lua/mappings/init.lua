local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local builtin = require('telescope.builtin')

vim.g.mapleader = ' '

map('n', '<leader>t', ':NvimTreeToggle<CR>', opts)
vim.keymap.set('n', '<leader><leader>f', builtin.find_files, {})

vim.g.floaterm_borderchars = { ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ' }
vim.g.floaterm_title = ""
vim.cmd('highlight Floaterm guibg=#1f2529')
vim.cmd('highlight FloatermBorder guibg=#1f2529')
vim.api.nvim_set_keymap('n', '<leader>m', ':FloatermNew<CR>', { noremap = true, silent = true })

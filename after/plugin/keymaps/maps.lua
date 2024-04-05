local telescopeBuiltin = require('telescope.builtin')

-- keymaps
vim.keymap.set('n', '<leader>a', ':tabprev<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>d', ':tabnext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>f', ':tabnew<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>g', ':Goyo<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>h', ':Goyo!<CR>', { noremap = true, silent = true })
-- vim.keymap.set('n', '<leader>i', function()
-- vim.keymap.set('n', '<leader>j', function()
vim.keymap.set('n', '<leader>m', ':FloatermNew<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>n', ':cclose<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>r', ':NvimTreeFocus<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>t', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- keymaps double leader
vim.keymap.set('n', '<leader><leader>f', telescopeBuiltin.find_files, {})
vim.keymap.set('n', '<leader><leader>g', telescopeBuiltin.git_files, {})
vim.keymap.set('n', '<leader><leader>n', ':copen<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader><leader>s', function()
		telescopeBuiltin.grep_string({ search = vim.fn.input("Grep ▶  ") })
end)
vim.keymap.set('n', '<leader><leader>z', ':qa<CR>', { noremap = true, silent = true })

-- show diagnostics
vim.keymap.set('n', '<leader>i', function()
    -- If we find a floating window, close it.
    local found_float = false
    for _, win in ipairs(vim.api.nvim_list_wins()) do
        if vim.api.nvim_win_get_config(win).relative ~= '' then
            vim.api.nvim_win_close(win, true)
            found_float = true
        end
    end

    if found_float then
        return
    end

    vim.diagnostic.open_float(nil, {
        focus = false,
        scope = 'cursor',
        border = {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
        pad_top = 0.8,
        pad_bottom = 0.8,
        width = 120,
        wrap = true,
    })
end )

-- show relations
vim.keymap.set('n', '<leader>j', function()
    -- If we find a floating window, close it.
    local found_float = false
    for _, win in ipairs(vim.api.nvim_list_wins()) do
        if vim.api.nvim_win_get_config(win).relative ~= '' then
            vim.api.nvim_win_close(win, true)
            found_float = true
        end
    end

    if found_float then
        return
    end
    vim.lsp.buf.hover()
end)

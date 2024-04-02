vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
    border = 'shadow',
    pad_top = 1,
    pad_bottom = 1,
    wrap = true,
})

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
        border = 'shadow',
        pad_top = 1,
        pad_bottom = 1,
        wrap = true
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


vim.api.nvim_set_keymap('n', '<leader>f', ':tabnew<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>a', ':tabprev<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>d', ':tabnext<CR>', { noremap = true, silent = true })

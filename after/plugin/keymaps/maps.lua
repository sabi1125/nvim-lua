local telescopeBuiltin = require('telescope.builtin')

-- keymaps
vim.keymap.set('n', '<leader>a', ':tabprev<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>d', ':tabnext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>f', ':tabnew<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>g', ':Glow<CR>', { noremap = true, silent = true })
-- vim.keymap.set('n', '<leader>i', function()
-- vim.keymap.set('n', '<leader>j', function()
vim.keymap.set('n', '<leader>m', ':FloatermNew<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>n', ':cclose<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>r', ':NvimTreeFocus<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>t', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<ESC>', '<cmd>nohlsearch<CR>', { noremap = true, silent = true })

-- keymaps double leader
vim.keymap.set('n', '<leader><leader>f', telescopeBuiltin.find_files, {})
vim.keymap.set('n', '<leader><leader>g', telescopeBuiltin.git_files, {})
vim.keymap.set('n', '<leader>gg', telescopeBuiltin.live_grep, {})
vim.keymap.set('n', '<leader>n', ':copen<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader><leader>s', function()
    telescopeBuiltin.grep_string({ search = vim.fn.input("Grep ▶  ") })
end)
vim.keymap.set('n', '<leader><leader>z', ':qa<CR>', { noremap = true, silent = true })

-- Keymaps with Ctrl
vim.keymap.set('n', '<C-l>', ':Trouble diagnostics toggle<CR>', { noremap = true, silent = true })

-- show diagnostics
vim.keymap.set('n', '<C-k>', function()
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

-- remove realative numbers
vim.keymap.set('n', '<C-n>', function()
    if not vim.opt.relativenumber:get() then
        vim.opt.relativenumber = true
        vim.opt.number = true
    elseif vim.opt.relativenumber:get() then
        vim.opt.relativenumber = false
        vim.opt.number = false
    end
end)

-- show relations
vim.keymap.set('n', '<C-j>', function()
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

-- debugger
vim.keymap.set('n', '<leader>5', function()
    require('dapui').toggle()
end)

vim.keymap.set('n', '<leader>1', function()
    require('dap').toggle_breakpoint()
end)

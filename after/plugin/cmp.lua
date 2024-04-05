local cmp = require'cmp'

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        -- confirm completion
        ['<CR>'] = cmp.mapping.confirm({select = true}),
        ['<C-j>'] = cmp.mapping.select_next_item({behavior = 'select'}),
        ['<C-k>'] = cmp.mapping.select_prev_item({behavior = 'select'}),

        -- scroll up and down the documentation window
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
    }),
    window = {
        completion = cmp.config.window.bordered({
            border = "none",
            padding = 0;
        })
    }
})


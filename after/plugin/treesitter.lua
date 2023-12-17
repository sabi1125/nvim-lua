local treesitter_ok, treesitter = pcall(require, 'nvim-treesitter.configs')

if treesitter_ok then
    treesitter.setup{
        ensure_installed = { 'c', 'lua', 'vim', 'go', 'python' },
        sync_install = false,
        auto_install = false,
        highlight = { enable = false },
        indent = { enable = true, expr = "nvim_treesitter#indent()" },
    }
end

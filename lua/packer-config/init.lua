return require'packer'.startup(function() 
    use 'wbthomason/packer.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'EdenEast/nightfox.nvim'
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use 'kyazdani42/nvim-tree.lua'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'onsails/lspkind.nvim' -- code icons
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
end)

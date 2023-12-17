-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , brnch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    -- everforest
    use({
        "neanias/everforest-nvim",
        -- Optional; default configuration will be used if setup isn't called.
        config = function()
            require("everforest").setup(
                {
                    on_highlights = function (hl, palette)
                        hl.DiagnosticError = { fg = palette.none, bg = palette.none, sp = palette.red }
                        hl.DiagnosticWarn = { fg = palette.none, bg = palette.none, sp = palette.yellow }
                        hl.DiagnosticInfo = { fg = palette.none, bg = palette.none, sp = palette.blue }
                        hl.DiagnosticHint = { fg = palette.none, bg = palette.none, sp = palette.green }
                    end
                })
            vim.cmd('colorscheme everforest')
        end,
    })

    -- neo tree
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = { 
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
            require("neo-tree").setup({
                filesystem = { filtered_items = { hide_dotfiles = false, hide_gitignored = false } }
            })
        },
    }

    -- float term
    use 'voldikss/vim-floaterm'

    -- surround
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })

    -- blamer
    use 'APZelos/blamer.nvim'

    -- indent-blankline
    use ({
        "lukas-reineke/indent-blankline.nvim",
    })


    -- auto-pairs
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    -- lsp-zero

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            -- Uncomment these if you want to manage LSP servers from neovim
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }

    -- go vim
    use ( 'fatih/vim-go', { run = ':GoUpdateBinaries' } )

end)

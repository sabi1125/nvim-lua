vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , brnch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'simrat39/rust-tools.nvim'
    use {"ellisonleao/glow.nvim", config = function() require("glow").setup() end}

    -- markdown mkdx
    use 'SidOfc/mkdx'

    -- goyo
    use { 'junegunn/goyo.vim' }

    -- limelight
    use { 'junegunn/limelight.vim' }

    vim.cmd[[
    autocmd! User GoyoEnter Limelight
    autocmd! User GoyoLeave Limelight!
    ]]

    -- nerdCommenter
    use { 'preservim/nerdcommenter' }

    -- go vim
    use ( 'fatih/vim-go', { run = ':GoUpdateBinaries' } )


    -- float term
    use 'voldikss/vim-floaterm'

    -- blamer
    use 'APZelos/blamer.nvim'

    -- indent-blankline
    use ({"lukas-reineke/indent-blankline.nvim"})

    -- treesitter
    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    -- nerd-icons
    use 'nvim-tree/nvim-web-devicons'

    -- fugitive
    use 'tpope/vim-fugitive'

    -- git signs
    use {'lewis6991/gitsigns.nvim'}

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }

    -- auto-pairs
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }


    -- noice
    use {
        "folke/noice.nvim",
        requires = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        }
    }

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
    -- other plugins...

    -- Completion framework:
    use 'hrsh7th/nvim-cmp' 

    -- LSP completion source:
    use 'hrsh7th/cmp-nvim-lsp'

    -- Useful completion sources:
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/vim-vsnip'
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
                    end })
        end,
    })

    vim.cmd.colorscheme('everforest')

    -- catppuchin
    --use { "catppuccin/nvim", as = "catppuccin", vim.cmd.colorscheme('catppuccin-frappe') }
    -- tokyo night
    --use {"folke/tokyonight.nvim"}
    --vim.cmd.colorscheme('tokyonight')
    --
end)

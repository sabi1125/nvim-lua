local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require'lspconfig'.anakin_language_server.setup{}
local lspconfig = require("lspconfig")
lspconfig.gopls.setup({})
require("mason").setup({})
require('mason-lspconfig').setup({
    -- Replace the language servers listed here
    -- with the ones you want to install
    ensure_installed = {'tsserver', 'rust_analyzer'},
    handlers = {
        lsp_zero.default_setup,
    }
})
vim.g.go_fmt_command = "goimports"
require('lspconfig').gopls.setup({
    settings = {
        gopls = {
            gofumpt = true
        }
    }
})

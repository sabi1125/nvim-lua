local builtin = require('telescope.builtin')
require("telescope").load_extension("noice")
require("telescope").setup({
    defaults = {
        border = true,
        borderchars = { "  ", "  ", "  ", "  ", "  ", "  ", "  ", "  " },
        layout_config = {
            height = 0.6,
            width = 0.7,
            prompt_position = "top",
        },
        prompt_prefix = " ▶  ",
        selection_caret = " ▶  ",
    },
    pickers = {
        find_files = {
            prompt_title = "",
            results_title = "",
            preview_title = ""
        },
    },

})

vim.cmd('highlight TelescopeNormal guibg=#1f2529')
vim.cmd('highlight TelescopeBorder guibg=#1f2529')
vim.cmd('highlight TelescopeSelectionCaret guibg=#1f2529')
vim.cmd('highlight TelescopeMatching guibg=#1f2529')
vim.cmd('highlight TelescopePromptNormal guibg=#1f2529')
vim.cmd('highlight TelescopePromptTitle guibg=#1f2529')
vim.cmd('highlight TelescopePromptPrefix guibg=#1f2529')
vim.cmd('highlight TelescopePromptBorder guibg=#1f2529')
vim.cmd('highlight TelescopePreviewTitle guibg=#1f2529')
vim.cmd('highlight TelescopePreviewBorder guibg=#1f2529')
vim.cmd('highlight TelescopeResultsTitle guibg=#1f2529')
vim.cmd('highlight TelescopeResultsBorder guibg=#1f2529')
vim.cmd('highlight TelescopeSelection guibg=#1f2529')

vim.keymap.set('n', '<leader><leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader><leader>g', builtin.git_files, {})
vim.keymap.set('n', '<leader><leader>s', function()
		builtin.grep_string({ search = vim.fn.input("Grep ▶  ") })
end)

vim.api.nvim_create_augroup("QuickfixWrap", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
group = "QuickfixWrap",
pattern = "qf", -- Applies to the quickfix list
callback = function()
vim.opt_local.wrap = true -- Enable word wrapping
vim.opt_local.linebreak = true -- Break at word boundaries
end,
})

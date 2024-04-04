vim.g.goyo_width = 120
vim.cmd([[autocmd BufRead,BufNewFile *.txt Goyo]])
vim.cmd([[autocmd BufRead,BufNewFile *.md Goyo | Limelight!]])

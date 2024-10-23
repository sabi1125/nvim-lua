vim.keymap.set('n', '<leader>p', function()
  local padding = 0
  local buf = vim.api.nvim_create_buf(false, true)
  local width = vim.api.nvim_get_option("columns")
  local height = vim.api.nvim_get_option("lines")
  local win_width = math.ceil(width * 0.8)
  local win_height = math.ceil(height * 0.8)
  local row = math.ceil((height - win_height) / 2 - 1 + padding)
  local col = math.ceil((width - win_width) / 2 + padding)

  vim.api.nvim_open_win(buf, true, {
    relative = 'editor',
    width = win_width,
    height = win_height,
    row = row,
    col = col,
    style = "minimal",
  })

  vim.api.nvim_buf_set_option(buf, 'bufhidden', 'wipe')
  vim.api.nvim_command('edit ' .. vim.fn.expand("~/Documents/notes.md"))
end,{ noremap = true, silent = true })

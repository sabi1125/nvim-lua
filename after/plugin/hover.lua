-- Function to truncate long lines in hover message
local function truncate_long_lines(contents)
    local max_width = 120 -- Maximum width before line break
    local lines = {}
    for _, line in ipairs(vim.split(contents, '\n')) do
        while #line > max_width do
            table.insert(lines, line:sub(1, max_width))
            line = line:sub(max_width + 1)
        end
        table.insert(lines, line)
    end
    return table.concat(lines, '\n')
end

-- Override the hover handler
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
    border = {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}, -- Border style
    pad_top = 0.8,  -- Padding at the top
    pad_bottom = 0.8, -- Padding at the bottom
    wrap = true, -- Enable line wrapping

    -- Apply custom function to truncate long lines
    render = function(_, _, result)
        if result and result.contents then
            result.contents = truncate_long_lines(result.contents)
        end
        vim.lsp.util.focusable_float(result)
    end
})

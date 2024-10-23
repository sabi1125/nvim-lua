vim.api.nvim_set_hl(0, "StatusLineError", { fg = "#ef766d", bold = true })  -- Customize colors

-- get current git branch for statusline
function GitBranch()
    local handler = io.popen("git branch --show-current 2> /dev/null")
    if handler == nil then
        return ""
    end
    local branch = handler:read("*a") or ""
    handler:close()
    branch = string.gsub(branch, "\n", "")
    return branch ~= "" and branch or ""
end

-- Current bufnr mode
function CurrentMode()
    local mode_icons = {
        n = " NOR",
        i = "󰿈 INS",
        c = " CMD",
        v = " VIS",
        V = " VLN",
        ["\22"] = " VBL",  -- Visual Block mode (represented as char 22)
        R = " REP",
        t = " TERM"
    }
    local currentMode = vim.api.nvim_get_mode().mode
    return mode_icons[currentMode] or "󰚾 ???"
end

-- overwrite formats
function ModifyIcon()
    if vim.bo.modified then
        return ""
    else
        return ""
    end
end

function ReadOnly()
    if vim.bo.readonly then
        return ""
    else
        return ""
    end
end

-- error line
function FirstErrorLine()
    -- Get the diagnostics for the current buffer
    local diagnostics = vim.lsp.diagnostic.get_line_diagnostics()
    -- Filter for only error severity diagnostics
    local firstErrorLine = nil
    for _, diagnostic in ipairs(diagnostics) do
        if diagnostic.severity == vim.lsp.protocol.DiagnosticSeverity.Error then
            firstErrorLine = diagnostic.range.start.line + 1  -- +1 for 1-based line number
            break
        end
    end

    -- If we found an error, return the line number with an icon
    if firstErrorLine then
        return string.format("󰃤 %d", firstErrorLine)
    else
        return ""  -- No errors, return empty
    end
end

vim.o.statusline = "  %t %{v:lua.ModifyIcon()} %{v:lua.ReadOnly()}  %= %#StatusLineError# %{v:lua.FirstErrorLine()} %## %= %#StatusLineError# %{v:lua.CurrentMode()}    %{v:lua.GitBranch()} %##   l:%lc:%c  󰹻 %p%% "

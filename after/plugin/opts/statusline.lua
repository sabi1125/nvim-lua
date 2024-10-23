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
    local bufnr = vim.api.nvim_get_current_buf()
    local diagnostics = vim.diagnostic.get(bufnr)

    local firstErrorLine = vim.tbl_filter(function (diag)
        return diag.severity == vim.diagnostic.severity.ERROR
    end, diagnostics)

    if #firstErrorLine > 0 then
        local line = firstErrorLine[1].lnum + 1
        local currentLine = vim.api.nvim_win_get_cursor(0)[1] - 1  -- Get current cursor line (0-based)
        line = line - currentLine
        local absLine = math.abs(line)
        if line > 1 then
            return "󰮷 󰃤 " .. absLine - 1
        elseif line < 1 then
            return "󰮽 󰃤 " .. absLine + 1
        elseif line == 1 then
            return "  󰃤 " .. absLine
        end
    else
        return ""  -- No errors, return empty
    end
end

vim.o.statusline = "  %t %{v:lua.ModifyIcon()} %{v:lua.ReadOnly()}  %= %#StatusLineError# %{v:lua.FirstErrorLine()} %## %= %#StatusLineError# %{v:lua.CurrentMode()}    %{v:lua.GitBranch()} %##   l:%lc:%c  󰹻 %p%% "

require('render-markdown').setup({
    -- Callouts are a special instance of a 'block_quote' that start with a 'shortcut_link'
    -- Can specify as many additional values as you like following the pattern from any below, such as 'note'
    --   The key in this case 'note' is for healthcheck and to allow users to change its values
    --   'raw': Matched against the raw text of a 'shortcut_link'
    --   'rendered': Replaces the 'raw' value when rendering
    --   'highlight': Highlight for the 'rendered' text and quote markers
    callout = {
        note = { raw = '[!NOTE]', rendered = '󰋽 Note ', highlight = 'DiagnosticInfo' },
        tip = { raw = '[!TIP]', rendered = '󰌶 Tip ', highlight = 'DiagnosticOk' },
        important = { raw = '[!IMPORTANT]', rendered = '󰅾 Important ', highlight = 'DiagnosticHint' },
        warning = { raw = '[!WARNING]', rendered = '󰀪 Warning ', highlight = 'DiagnosticWarn' },
        caution = { raw = '[!CAUTION]', rendered = '󰳦 Caution ', highlight = 'DiagnosticError' },
        -- Obsidian: https://help.a.md/Editing+and+formatting/Callouts
        abstract = { raw = '[!ABSTRACT]', rendered = '󰨸 Abstract ', highlight = 'DiagnosticInfo' },
        todo = { raw = '[!TODO]', rendered = '󰗡 Todo ', highlight = 'DiagnosticInfo' },
        success = { raw = '[!SUCCESS]', rendered = '󰄬 Success ', highlight = 'DiagnosticOk' },
        question = { raw = '[!QUESTION]', rendered = '󰘥 Question ', highlight = 'DiagnosticWarn' },
        failure = { raw = '[!FAILURE]', rendered = '󰅖 Failure ', highlight = 'DiagnosticError' },
        danger = { raw = '[!DANGER]', rendered = '󱐌 Danger ', highlight = 'DiagnosticError' },
        bug = { raw = '[!BUG]', rendered = '󰨰 Bug ', highlight = 'DiagnosticError' },
        example = { raw = '[!EXAMPLE]', rendered = '󰉹 Example ', highlight = 'DiagnosticHint' },
        quote = { raw = '[!QUOTE]', rendered = '󱆨 Quote ', highlight = '@markup.quote' },
    },
    code = {
        -- Turn on / off code block & inline code rendering
        enabled = true,
        -- Determines how code blocks & inline code are rendered:
        --  none: disables all rendering
        --  normal: adds highlight group to code blocks & inline code
        --  language: adds language icon to sign column and icon + name above code blocks
        --  full: normal + language
        style = 'language',
        -- Highlight for code blocks & inline code
        highlight = 'ColorColumn',
    },
})

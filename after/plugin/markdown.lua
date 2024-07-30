require('render-markdown').setup({
    -- Callouts are a special instance of a 'block_quote' that start with a 'shortcut_link'
    -- Can specify as many additional values as you like following the pattern from any below, such as 'note'
    --   The key in this case 'note' is for healthcheck and to allow users to change its values
    --   'raw': Matched against the raw text of a 'shortcut_link', case insensitive
    --   'rendered': Replaces the 'raw' value when rendering
    --   'highlight': Highlight for the 'rendered' text and quote markers
    callout = {
        note = { raw = '[!NOTE]', rendered = ' 󰋽 Note ', highlight = 'RenderMarkdownInfo' },
        tip = { raw = '[!TIP]', rendered = ' 󰌶 Tip ', highlight = 'RenderMarkdownSuccess' },
        important = { raw = '[!IMPORTANT]', rendered = ' 󰅾 Important ', highlight = 'RenderMarkdownHint' },
        warning = { raw = '[!WARNING]', rendered = ' 󰀪 Warning ', highlight = 'RenderMarkdownWarn' },
        caution = { raw = '[!CAUTION]', rendered = ' 󰳦 Caution ', highlight = 'RenderMarkdownError' },
        -- Obsidian: https://help.a.md/Editing+and+formatting/Callouts
        abstract = { raw = '[!ABSTRACT]', rendered = ' 󰨸 Abstract ', highlight = 'RenderMarkdownInfo' },
        todo = { raw = '[!TODO]', rendered = ' 󰗡 Todo ', highlight = 'RenderMarkdownInfo' },
        success = { raw = '[!SUCCESS]', rendered = ' 󰄬 Success ', highlight = 'RenderMarkdownSuccess' },
        question = { raw = '[!QUESTION]', rendered = ' 󰘥 Question ', highlight = 'RenderMarkdownWarn' },
        failure = { raw = '[!FAILURE]', rendered = ' 󰅖 Failure ', highlight = 'RenderMarkdownError' },
        danger = { raw = '[!DANGER]', rendered = ' 󱐌 Danger ', highlight = 'RenderMarkdownError' },
        bug = { raw = '[!BUG]', rendered = ' 󰨰 Bug ', highlight = 'RenderMarkdownError' },
        example = { raw = '[!EXAMPLE]', rendered = ' 󰉹 Example ', highlight = 'RenderMarkdownHint' },
        quote = { raw = '[!QUOTE]', rendered = ' 󱆨 Quote ', highlight = 'RenderMarkdownQuote' },
        test = { raw = '[!TEST]', rendered = ' 󱆨 Test ', highlight = 'RenderMarkdownQuote' },
    },
})

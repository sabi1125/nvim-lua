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

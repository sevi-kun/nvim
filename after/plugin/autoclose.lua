local autoclose = require("autoclose")

autoclose.setup({
    options = {
        disabled_filetypes = { "text", "markdown", "neogit", },
        disable_when_touch = true,
        pair_spaces = true,
        auto_indent = true,
        disable_command_mode = true,
    },
})


-- Configuration of mini.nvim plugins


-- mini.map
local map = require("mini.map")
map.setup({
    symbols = {
        encode = map.gen_encode_symbols.dot("3x2")
    },
    window = {
        width = 16,
        show_integration_count = false
    },
    integrations = {
        map.gen_integration.diagnostic({
            error = "DiagnosticFloatingError",
            warn = "DiagnosticFloatingWarn",
            info = "DiagnosticFloatingInfo",
            hint = "DiagnosticFloatingHint",
        }),
        map.gen_integration.builtin_search(),
    },
})

vim.keymap.set("n", "<Leader>mf", map.toggle_focus)
vim.keymap.set("n", "<Leader>mr", map.refresh)
vim.keymap.set("n", "<Leader>mt", map.toggle)


-- mini.animate
local animate = require("mini.animate")
animate.setup({
    cursor = {
        timing = animate.gen_timing.linear({ duration = 150, unit = "total" })
    },
    scroll = {
        timing = animate.gen_timing.linear({ duration = 150, unit = "total" })
    },
    resize = {
        timing = animate.gen_timing.linear({ duration = 150, unit = "total" })
    },
    open = {
        timing = animate.gen_timing.linear({ duration = 150, unit = "total" })
    },
    close = {
        timing = animate.gen_timing.linear({ duration = 150, unit = "total" })
    },
})


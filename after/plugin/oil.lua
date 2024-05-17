require("oil").setup({
    default_file_explorer = false,

    columns = {
        -- "icon",
        -- "permissions",
        -- "size",
        -- "mtime",
    },

    float = {
        -- Padding around the floating window
        padding = 12,
        max_width = 120,
        max_height = 64,
        border = "rounded",
        win_options = {
            winblend = 0,
        },
        -- This is the config that will be passed to nvim_open_win.
        -- Change values here to customize the layout
        override = function(conf)
            return conf
        end,
    }
})

vim.keymap.set("n", "<leader>-", ":Oil --float <CR>")

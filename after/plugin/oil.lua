require('oil').setup({
    default_file_explorer = false,

    columns = {
        -- "icon",
        -- "permissions",
        -- "size",
        -- "mtime",
    },

    float = {
        -- Padding around the floating window
        padding = 8,
        max_width = 80,
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
    },

    keymaps = {
        ["g?"] = "actions.show_help",
        ["<CR>"] = "actions.select",
        ["<C-s>"] = "actions.select_vsplit",
        ["<C-h>"] = "actions.select_split",
        ["<C-t>"] = "actions.select_tab",
        ["<C-p>"] = "actions.preview",
        ["<Esc>"] = "actions.close",
        ["<C-r>"] = "actions.refresh",
        ["-"] = "actions.parent",
        ["_"] = "actions.open_cwd",
        ["`"] = "actions.cd",
        ["~"] = "actions.tcd",
        ["g."] = "actions.toggle_hidden",
    },
})

vim.keymap.set('n', '<leader>-', ":Oil --float <CR>")

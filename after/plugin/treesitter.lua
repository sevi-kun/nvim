-- parsing and highlighting
require"nvim-treesitter.configs".setup {
    -- A list of parser names, or "all" (the five listed parsers should always be installed)

    ensure_installed = "all",
    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don"t have `tree-sitter` CLI installed locally
    auto_install = true,


    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
        },
    },

    highlight = {
        enable = true,
    },

    -- Needed because treesitter highlight turns off autoindent for php files
    indent = {
        enable = true,
    },
}

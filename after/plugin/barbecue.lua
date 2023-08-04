-- pretty location at the top
require("barbecue").setup({
    ---Filetypes not to enable winbar in.
    ---
    ---@type string[]
    exclude_filetypes = { "netrw", "toggleterm", "neogit" },

    ---Whether to display path to file.
    ---
    ---@type boolean
    show_dirname = true,

    ---Whether to display file name.
    ---
    ---@type boolean
    show_basename = true,

    ---Whether to replace file icon with the modified symbol when buffer is
    ---modified.
    ---
    ---@type boolean
    show_modified = false,

    ---Get modified status of file.
    ---
    ---NOTE: This can be used to get file modified status from SCM (e.g. git)
    ---
    ---@type fun(bufnr: number): boolean
    modified = function(bufnr) return vim.bo[bufnr].modified end,

    ---Whether to show/use navic in the winbar.
    ---
    ---@type boolean
    show_navic = true,
})

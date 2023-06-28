vim.opt.termguicolors = true
require("bufferline").setup({
    options = {
        style_preset = "minimal",
        diagnostics = "nvim_lsp"
    }
})

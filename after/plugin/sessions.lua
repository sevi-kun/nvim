require("auto-session").setup {
    log_level = "error",
    auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/"},
}

require('session-lens').setup({
    path_display = {'shorten'},
    theme_conf = { border = true },
    previewer = false,
})


vim.keymap.set('n', '<leader>ss', ":SearchSession<CR>")

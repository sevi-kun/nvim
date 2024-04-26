local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup({})
-- REQUIRED
--
-- basic telescope configuration
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
    local file_paths = {}
    for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
    end

    require("telescope.pickers").new({}, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({
            results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
    }):find()
end

vim.keymap.set("n", "<leader>H", function() toggle_telescope(harpoon:list()) end,
    { desc = "Open harpoon in telescope" })


vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end,
    { desc = "Harpoon: Add current buffer" })
vim.keymap.set("n", "<leader>hh", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
    { desc = "Harpoon: Toggle quick menu" })

vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-j>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-k>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-l>", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<leader>hp", function() harpoon:list():prev() end,
    { desc = "Harpoon: Previous buffer" })
vim.keymap.set("n", "<leader>hn", function() harpoon:list():next() end,
    { desc = "Harpoon: Next buffer" })


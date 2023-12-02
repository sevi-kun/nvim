-- lazy.nvim plugins

return {
    -- treesitter
    { "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate"
    },
    { "nvim-treesitter/playground" },
    { "nvim-treesitter/nvim-treesitter-context" },


    -- useful
    { "rmagatti/session-lens",
        dependencies = {
            "rmagatti/auto-session",
            "nvim-telescope/telescope.nvim"
        }
    },

    { "nvim-telescope/telescope.nvim", version = "0.1.x",
        dependencies = { "nvim-lua/plenary.nvim" }
    },

    { "ThePrimeagen/harpoon",
    	version = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
    },

    { "NeogitOrg/neogit",
        dependencies = { "nvim-lua/plenary.nvim" }
    },

    { "stevearc/oil.nvim" },

    { "nvim-neorg/neorg",
        version = "*",
        build = ":Neorg sync-parsers",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("neorg").setup {
                load = {
                    ["core.defaults"] = {}, -- Loads default behaviour
                    ["core.concealer"] = {}, -- Adds pretty icons to your documents
                    ["core.dirman"] = { -- Manages Neorg workspaces
                        config = {
                            workspaces = {
                                notes = "~/Documents/Notes",
                            },
                            default_workspace = "notes",
                        },
                    },
                },
            }
        end,
    },

    { "kylechui/nvim-surround",
        version = "*",
        config = function()
            require("nvim-surround").setup()
        end
    },

    { "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end
    },

    { "mbbill/undotree" },

    { "m4xshen/autoclose.nvim",
        config = function ()
            require("autoclose").setup()
        end
    },


    -- pretty

    { "navarasu/onedark.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd("colorscheme onedark")
        end
    },

    { "lukas-reineke/indent-blankline.nvim",
        lazy = false,
        main = "ibl",
        opts = {},
        config = function()
            require("ibl").setup({})
        end
    },

    { "utilyre/barbecue.nvim",
        lazy = false,
        name = "barbecue",
        version = "*",
        dependencies = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons",
        },
    },


    -- lsp

    { "github/copilot.vim" },

    {"williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup({})
        end
    },
    {"williamboman/mason-lspconfig.nvim"},

    {"VonHeikemen/lsp-zero.nvim", branch = "v3.x"},
    {"neovim/nvim-lspconfig"},
    {"hrsh7th/cmp-nvim-lsp"},
    {"hrsh7th/nvim-cmp"},
    {"L3MON4D3/LuaSnip"},
}

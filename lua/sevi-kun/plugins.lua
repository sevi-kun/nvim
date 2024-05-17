-- lazy.nvim plugins

return {
    -- treesitter
    { "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate"
    },
    { "nvim-treesitter/playground" },
    { "nvim-treesitter/nvim-treesitter-context" },


    -- useful

    { dir = "/mnt/nas_belar/code/vim-plugins/narrator.nvim" },

    { "rmagatti/session-lens",
        dependencies = {
            "rmagatti/auto-session",
            "nvim-telescope/telescope.nvim"
        }
    },

    { "nvim-telescope/telescope.nvim",
        version = "0.1.x",
        dependencies = { "nvim-lua/plenary.nvim" }
    },

    { "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
    },

    { "NeogitOrg/neogit",
        branch = "nightly",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "sindrets/diffview.nvim",
            "nvim-telescope/telescope.nvim",
        }
    },

    { "stevearc/oil.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" }
    },

    { "kylechui/nvim-surround",
        version = "*",
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup()
        end
    },

    { "mbbill/undotree" },

    { "m4xshen/autoclose.nvim" },


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


    -- mini

    { "echasnovski/mini.basics",
        version = false,
        config = function()
            require("mini.basics").setup()
        end
    },

    { "echasnovski/mini.ai",
        version = false,
        config = function()
            require("mini.ai").setup()
        end
    },

    { "echasnovski/mini.comment",
        version = false,
        config = function()
            require("mini.comment").setup()
        end
    },

    { "echasnovski/mini.map",
        version = false,
    },

    { "echasnovski/mini.statusline",
        version = false,
        config = function()
            require("mini.statusline").setup()
        end
    },

    { "echasnovski/mini.animate",
        version = false,
        config = function()
            require("mini.animate").setup()
        end
    },

    { "echasnovski/mini.fuzzy",
        version = false,
        config = function()
            require("mini.fuzzy").setup()
        end
    },

    { "echasnovski/mini.splitjoin",
        version = false,
        config = function()
            require("mini.splitjoin").setup()
        end
    },


    -- lsp

    { "Exafunction/codeium.vim",
        event = "BufEnter"
    },

    { "williamboman/mason.nvim",
        config = function()
            require("mason").setup({})
        end
    },
    { "williamboman/mason-lspconfig.nvim" },

    { "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
    { "neovim/nvim-lspconfig" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/nvim-cmp" },
    { "L3MON4D3/LuaSnip" },
}

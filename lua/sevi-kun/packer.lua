-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'


    -- treesitter
    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use ('nvim-treesitter/playground')
    use ('nvim-treesitter/nvim-treesitter-context')


    -- useful
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        requires = 'nvim-lua/plenary.nvim'
    }

    use {
        'ThePrimeagen/harpoon',
        requires = 'nvim-lua/plenary.nvim'
    }

    use {
        'NeogitOrg/neogit',
        requires = 'nvim-lua/plenary.nvim'
    }

    use ('mbbill/undotree')

    use {
        'm4xshen/autoclose.nvim',
        config = function ()
            require("autoclose").setup()
        end
    }


    -- pretty
    use {
        'catppuccin/nvim',
        as = 'mocha',
        config = function()
            vim.cmd('colorscheme catppuccin-mocha')
        end
    }

    use {
        "utilyre/barbecue.nvim", tag = "*",
        requires = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons", -- optional dependency
        },
        after = "nvim-web-devicons", -- keep this if you're using NvChad
        config = function()
            require("barbecue").setup()
        end,
    }


    -- lsp
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
        }
    }
end)

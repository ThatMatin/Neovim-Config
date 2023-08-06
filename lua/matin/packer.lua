vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use('ggandor/leap.nvim')
    use({
        'nmac427/guess-indent.nvim',
        config = function() require('guess-indent').setup {} end,
    })
    use('RRethy/vim-illuminate')
    use({
        'folke/todo-comments.nvim',
        requires = {'nvim-lua/plenary.nvim'}
    })
    use('simrat39/symbols-outline.nvim')
    use({
        'aserowy/tmux.nvim',
        config = function() return require("tmux").setup() end
    })
    use('folke/trouble.nvim')
    use('lewis6991/gitsigns.nvim')
    use('romgrk/barbar.nvim')
    use('nvim-tree/nvim-web-devicons')
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim',
        requires = { 
            'nvim-lua/plenary.nvim',
            "debugloop/telescope-undo.nvim",
        }
    }
    use({
        'rose-pine/neovim',
        as = 'rose-pine'
    })
    use('nvim-treesitter/nvim-treesitter', {run =  ':TSUpdate'})
    use('ThePrimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }
    use {'hkupty/iron.nvim'}
end)

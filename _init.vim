:set number
:set relativenumber
:set tabstop=4
:set shiftwidth=4
:set autoindent
:set mouse=a

call plug#begin()

Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip', {'tag': 'v<CurrentMajor>.*'}
Plug 'rafamadriz/friendly-snippets'
Plug 'pechorin/any-jump.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'https://github.com/morhetz/gruvbox'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/nvim-treesitter/nvim-treesitter'
Plug 'https://github.com/fatih/vim-go.git'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/nvim-tree/nvim-web-devicons'
Plug 'https://github.com/nvim-tree/nvim-tree.lua'

call plug#end()

lua	require("mason").setup()
lua require("mason-lspconfig").setup()
lua	require("lspconfig").sumneko_lua.setup {}
lua	require("lspconfig").rust_analyzer.setup {}
lua require("lspconfig").pyright.setup {}

autocmd vimenter * ++nested colorscheme gruvbox

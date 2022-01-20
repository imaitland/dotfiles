vim.cmd([[
    set tabstop=4 softtabstop=4
    set shiftwidth=4
    set expandtab
    set smartindent
    set exrc
    set relativenumber
    set nu
    set nohlsearch
    set hidden
    set noerrorbells
    set nowrap
    set noswapfile
    set nobackup
    set undofile
    set incsearch
    set scrolloff=8
    set colorcolumn=80
    set signcolumn=yes
]])

vim.cmd([[
    call plug#begin()
    " Fuzzy Finder
    Plug 'nvim-telescope/telescope.nvim'
    " Theme
    Plug 'gruvbox-community/gruvbox'
    " No GUI theme
    Plug 'huyvohcmc/atlas.vim'
    " Language Server Provider
    Plug 'neovim/nvim-lspconfig'
    " Completion - https://github.com/hrsh7th/nvim-cmp
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'

    " Java language server - java.lua for further config
    Plug 'mfussenegger/nvim-jdtls'

    " Show function signature when you type - https://github.com/ray-x/lsp_signature.nvim
    " Required in java.lua
    Plug 'ray-x/lsp_signature.nvim'

    call plug#end()

]])

vim.cmd([[
    if has("gui_running")  
        colorscheme gruvbox
    else  
        colorscheme atlas
    endif
]])


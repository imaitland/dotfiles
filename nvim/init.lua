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
    " Language Server Provider
    Plug 'neovim/nvim-lspconfig'
    call plug#end()
]])

vim.cmd([[
    colorscheme gruvbox
]])

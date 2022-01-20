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

    call plug#begin()
    " Fuzzy Finder
    Plug 'nvim-telescope/telescope.nvim'
    " Theme
    Plug 'gruvbox-community/gruvbox'

    " https://w.amazon.com/bin/view/Users/igbanam/Quip/VimasJavaIDE
    " Vim Java Language Server - Amazon flavor

    " Use release branch (recommend)
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    call plug#end()
    colorscheme gruvbox

" AWS WORK JAVA ---------------------------------------------------------- }}}"
" LIMIT: Will only work if nvim is started from a workspace root...
" SEE: https://w.amazon.com/bin/view/Users/igbanam/Quip/VimasJavaIDE
"
" ISSUE: https://github.com/neoclide/coc-java/issues/99
"
" You may need to replace Replace all directories/files in
" ~/.config/coc/extensions/coc-java-data/server 
" with directories/files from above extracted JDT lang server tar.
"
" REQUISITES: After running :PlugInstall setup coc
" :CocInstall coc-java 
" :CocInstall coc-json

" Use Coc
    set hidden
    set nobackup                  " Remove them pesky .swp files"
    set nowritebackup
    set updatetime=300            " ...so screen draws don't lag"
    set shortmess+=c              " Don't pass messages to |ins-completion-menu|"
    set signcolumn=yes            " Always show signedcolumn"

    nmap <silent> [g <Plug>(coc-diagnostic-prev)
    nmap <silent> ]g <Plug>(coc-diagnostic-next)

    nmap <silent> gd <Plug>(coc-definition)
    nmap <silent> gy <Plug>(coc-type-definition)
    nmap <silent> gi <Plug>(coc-implementation)
    nmap <silent> gr <Plug>(coc-references)

" Tell the language server to use JAVA from brazil workspace root.
    function! BrazilWorkspaceRoot()
      let l:working_directory = getcwd()
      let l:workspace_root = split(l:working_directory, "/")[0:4]
      return "/" . join(l:workspace_root, "/")
    endfunction

    function! BrazilOpenJDKLocation()
      let l:workspace_directory=BrazilWorkspaceRoot()
      let l:jdk_path=""
      if (isdirectory(l:workspace_directory."/env/OpenJDK8-1.1"))
          let l:jdk_path=l:workspace_directory."/env/OpenJDK8-1.1"
      elseif (isdirectory(l:workspace_directory."/env/JDK8-1.0"))
          let l:jdk_path=l:workspace_directory."/env/JDK8-1.0"
      endif
      
      if (empty(l:jdk_path))
        return "/apollo/env/JavaSE11/jdk-11/"
      else
        return l:jdk_path . "/runtime/jdk1.8/"
      endif
    endfunction

    function! SetBrazilJDKHome()
      let $JDK_HOME=BrazilOpenJDKLocation()
    endfunction
    call SetBrazilJDKHome()


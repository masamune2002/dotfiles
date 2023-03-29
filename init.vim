let mapleader=","

call plug#begin()
 Plug 'ryanoasis/vim-devicons'
 Plug 'honza/vim-snippets'
 Plug 'scrooloose/nerdtree'                      " file explorer
 Plug 'mhinz/vim-startify'                       " start screen
 Plug 'neoclide/coc.nvim', {'branch': 'release'} " autocomplete
 Plug 'christoomey/vim-system-copy'              " copy from vim to outside vim
 Plug 'tpope/vim-fugitive'                       " git support
 Plug 'tpope/vim-commentary'                      " commenting
 Plug 'tpope/vim-surround'                        " surround stuff with quotes, brackets, etc.
 Plug 'mbbill/undotree'
 Plug 'nvim-lua/plenary.nvim'
 Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' } " fuzzy search
 Plug 'jremmen/vim-ripgrep'                       " performant grep alt
 Plug 'jose-elias-alvarez/typescript.nvim'        " typescript language server and utilities
 Plug 'pangloss/vim-javascript'                   " javascript language server and utilities
call plug#end()

" Colors
" colorscheme vim-monokai-tasty
hi Normal ctermbg=16 guibg=#000000 " set background to black
hi LineNr ctermbg=16 guibg=#000000 " set line number bar to black (might not be necessary)

" Editor Setup
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching
set mouse=v                 " middle-click paste with
set hlsearch                " highlight search
set incsearch               " incremental search
set tabstop=2               " number of columns occupied by a tab
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set relativenumber          " show relative numbers in the sidebar
set wildmode=longest,list   " get bash-like tab completions
filetype plugin indent on   " allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
set showcmd
set list
set kp=:Rg                  " use ripgrep for keyword lookup

" COC (Conquer of Completion)
" Set tab to scroll suggestions and enter to accept
if has('nvim-0.4.0') || has('patch-8.2.0750')
  inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
  inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
  inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
endif

" Leader Commands
nnoremap <leader>pi :PlugInstall<CR>                                  " install plugins
nnoremap <leader>u :UndotreeToggle<CR>                                " toggle undotree
nnoremap <leader>n :NERDTreeToggle<CR>                                " toggle nerdtree
nnoremap <leader>ff <cmd>Telescope find_files<cr>                     " find files
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>oc <cmd>:sp ~/.config/nvim/cheat-sheet.txt<cr>
nnoremap <leader>ov <cmd>:sp ~/.config/nvim/init.vim<cr>
nnoremap <Leader>sv :source $MYVIMRC<CR>
nnoremap <leader>wt <cmd>:g/\s$/norm $diw<cr>

" COC (Conquer of Completion)
" Set tab to scroll suggestions and enter to accept
if has('nvim-0.4.0') || has('patch-8.2.0750')
  inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
  inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
  inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
endif


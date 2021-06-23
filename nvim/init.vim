syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set number                     " Show current line number
set relativenumber             " Show relative line numbers

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Vim Plug-ins install with Vim Plug
" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
Plug 'jremmen/vim-ripgrep'
" Plug 'tpop/vim-fugitive'
" Plug 'leafgarland/typescript-vim'
" Plug 'lyuts/vim-rtags'
" Plug 'git@github.com:kien/ctrlp.vim.git'
" Plug 'valloric/youcompleteme'
Plug 'mbbill/undotree'


call plug#end()

colorscheme gruvbox
set background=dark

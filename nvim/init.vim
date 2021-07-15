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
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set number                     " Show current line number
set relativenumber             " Show relative line numbers
set cursorline
" set colorcolumn=80
" highlight ColorColumn ctermbg=0 guibg=lightgrey

let mapleader = " "

" Vim Plug-ins install with Vim Plug
" https://github.com/junegunn/vim-plug
call plug#begin('~/.config/nvim/pluggins')
" call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
Plug 'jremmen/vim-ripgrep'
" Plug 'tpop/vim-fugitive'
" Plug 'leafgarland/typescript-vim'
" Plug 'lyuts/vim-rtags'
" Plug 'git@github.com:kien/ctrlp.vim.git'
" Plug 'valloric/youcompleteme'
Plug 'mbbill/undotree'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'

" Telescope Requirements
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Telescope Plug-ins
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' } 
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  

call plug#end()

" Personal Settings
colorscheme gruvbox
set background=dark
let g:airline_powerline_fonts = 1

" Telescope Preferences
lua << EOF
require('telescope').setup{
    defaults = {
          prompt_prefix = "> ",
    },
require('telescope').load_extension('fzf'), -- ripgrep required
jolor_devicons = true,
file_previewer = require'telescope.previewers'.vim_buffer_cat.new, -- Install bat first
grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
-- Developer configurations: Not meant for general override
buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker
}
EOF

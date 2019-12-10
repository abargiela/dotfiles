call plug#begin('~/.vim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'scrooloose/nerdtree'

call plug#end()

" Settings and mappings
colorscheme dracula

set nocompatible
syntax on
filetype plugin indent on
set cursorline
set hidden
set ignorecase
set number
set smartcase
set termguicolors
set undofile
set tabstop=4 shiftwidth=4 softtabstop=0 noexpandtab

map <C-n> :NERDTreeToggle<CR>


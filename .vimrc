" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim
set t_Co=256
set background=dark
let g:solarized_termcolors=256
set term=xterm-256color
syntax on
set colorcolumn=79
set encoding=utf-8
set number

colorscheme gruvbox-material

set tabstop=2 softtabstop=2 shiftwidth=2 textwidth=79 expandtab fileformat=unix hlsearch
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Vundle start
set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme='simple'
let g:airline#extensions#tabline#enabled = 1
Plugin 'ctrlpvim/ctrlp.vim'
set runtimepath^=~/.vim/bundle/ctrlp.vim
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>
map <C-n> :NERDTreeToggle<CR>
Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_python_checkers = ['pylint']

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" end Vundle

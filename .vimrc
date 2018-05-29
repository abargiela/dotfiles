" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim
set t_Co=256

set encoding=utf-8
set term=screen-256color

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
let python_highlight_all=1

" grep to list dark schemes
"!egrep 'background=dark' ~/.vim/colors/*| awk -F \/ '{print $6}'| awk -F . '{print $1}' | tr "\n" " "

colorscheme gruvbox 
"colorscheme triplejelly
"colorscheme wombat256
"colorscheme twilight256

set background=dark
syntax enable

set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab fileformat=unix hlsearch

"""""" Vundle start
filetype off                  " required

set number relativenumber

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
"
Plugin 'vim-airline/vim-airline-themes'
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
"
Plugin 'nvie/vim-flake8'
"
Plugin 'ctrlpvim/ctrlp.vim'
set runtimepath^=~/.vim/bundle/ctrlp.vim
"
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'mzlogin/vim-markdown-toc'
let g:vmt_auto_update_on_save = 1
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_toc_autofit = 1
"
"
Plugin 'jpalardy/spacehi.vim'
let g:spacehi_tabcolor="ctermfg=White ctermbg=Red guifg=White guibg=Red"
let g:spacehi_spacecolor="ctermfg=Black ctermbg=Yellow guifg=Blue guibg=Yellow"
let g:spacehi_nbspcolor="ctermfg=White ctermbg=Red guifg=White guibg=Red"
"
"
Plugin 'chase/vim-ansible-yaml'
"
Plugin 'townk/vim-autoclose'
Plugin 'danro/rename.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'valloric/vim-indent-guides'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
"
Plugin 'scrooloose/syntastic'
let g:syntastic_python_checkers = ['pylint']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"""""" Vundle end 

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

set backspace=indent,eol,start
set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab fileformat=unix hlsearch

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
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'w0rp/ale'
Plugin 'neoclide/coc.nvim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=Grey27   ctermbg=238
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=Grey19   ctermbg=236
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_folding_disabled = 1

"CocInstall coc-yaml
"CocInstall coc-python
"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" end Vundle

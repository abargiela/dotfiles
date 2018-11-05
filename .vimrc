" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim
set t_Co=256
set background=dark
let g:solarized_termcolors=256
set term=xterm-256color

syntax enable

set colorcolumn=79  
set encoding=utf-8

"set cursorline
set paste

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
"let python_highlight_all=1

" grep to list dark schemes
"!egrep 'background=dark' ~/.vim/colors/*| awk -F \/ '{print $6}'| awk -F . '{print $1}' | tr "\n" " "


colorscheme leo
"colorscheme gruvbox 
"colorscheme triplejelly
"colorscheme wombat256
"colorscheme twilight256

set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab fileformat=unix hlsearch

"""""" Vundle start
filetype off                  " required

set number 
"set relativenumber

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
"

"
Plugin 'kien/rainbow_parentheses.vim'
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
"


Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme='simple'
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
"
Plugin 'nvie/vim-flake8'
"
Plugin 'ctrlpvim/ctrlp.vim'
set runtimepath^=~/.vim/bundle/ctrlp.vim
"
Plugin 'godlygeek/tabular'
Plugin 'shougo/vimshell.vim'

Plugin 'lilydjwg/colorizer'



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

Plugin 'hashivim/vim-terraform'
let g:terraform_align=1

Plugin 'juliosueiras/vim-terraform-completion'


Plugin 'avakhov/vim-yaml'
au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/bundle/vim-yaml/after/ftplugin/yaml.vim


"Plugin 'chase/vim-ansible-yaml'
"Plugin 'pearofducks/ansible-vim'


"
Plugin 'spf13/vim-autoclose'

"Plugin 'townk/vim-autoclose'
Plugin 'danro/rename.vim'
Plugin 'davidhalter/jedi-vim'
"Plugin 'vim-scripts/indentpython.vim'
"
"Plugin 'nathanaelkane/vim-indent-guides'
"let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_auto_colors = 0
"hi IndentGuidesOdd  ctermbg=black
"hi IndentGuidesEven ctermbg=darkgrey
"
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>

map <C-n> :NERDTreeToggle<CR>

Plugin 'pld-linux/vim-syntax-vcl'

Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_perl_interpreter = ['yamllint']

"

""
Plugin 'pangloss/vim-javascript'
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
"

Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"""""" Vundle end 

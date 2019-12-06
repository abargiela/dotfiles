set nocompatible
syntax on
filetype plugin indent on
set cursorline
set number
set tabstop=4 shiftwidth=4 softtabstop=0 noexpandtab
hi SpecialKey ctermfg=grey guifg=grey70



highlight Trail ctermbg=red guibg=red
call matchadd('Trail', '\s\+$', 100)



" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
map <C-n> :NERDTreeToggle<CR>

Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

"
"Plug 'vim-syntastic/syntastic'
"
"" Syntastic Config
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"
"" (Optional)Remove Info(Preview) window
"set completeopt-=preview
"
"" (Optional)Hide Info(Preview) window after completions
"autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"
"" (Optional) Enable terraform plan to be include in filter
"let g:syntastic_terraform_tffilter_plan = 1
"" (Optional) Default: 0, enable(1)/disable(0) plugin's keymapping
"let g:terraform_completion_keys = 1
"
"" (Optional) Default: 1, enable(1)/disable(0) terraform module registry completion
"let g:terraform_registry_module_completion = 0
""

" deoplete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
let g:deoplete#omni_patterns = {}
let g:deoplete#omni_patterns.terraform = '[^ *\t"{=$]\w*'
let g:deoplete#enable_at_startup = 1
"

Plug 'deoplete-plugins/deoplete-jedi'


Plug 'hashivim/vim-terraform'
let g:terraform_align=1
let g:terraform_fmt_on_save=1

Plug 'juliosueiras/vim-terraform-completion'


Plug 'anyakichi/vim-surround'

Plug 'kien/ctrlp.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

Plug 'chase/vim-ansible-yaml'

Plug 'davidhalter/jedi-vim'

Plug 'ludovicchabant/vim-gutentags'

Plug 'tpope/vim-fugitive'




" Initialize plugin system
call plug#end()

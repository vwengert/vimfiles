" Vim Configuration
"
set encoding=utf-8
set number relativenumber
syntax enable
set noswapfile
set scrolloff=7
set backspace=indent,eol,start
set bg=dark
set clipboard=unnamed
set ignorecase
set smartcase
set tw=79
set colorcolumn=80
set spell spelllang=en,de

autocmd! bufwritepost .vimrc source %

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=dos

let mapleader=" "

set mouse=a

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" having ESC on the keyboard.
" inoremap jk <ESC>


call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'davidhalter/jedi-vim'
Plug 'gryf/pylint-vim'
Plug 'vim-syntastic/syntastic'
Plug 'ycm-core/YouCompleteMe'

call plug#end()

colorscheme darkblue

let g:airline_theme='gruvbox'
if (has("termguicolors"))
    set termguicolors
endif

" Nerd Commenter
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv
" Nerd Tree
let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1
nmap <F2> :NERDTreeToggle<CR>

" fugitiv setup
nmap <leader>gs :G<CR>
nmap <leader>gf :diffget //2<CR>
nmap <leader>gj :diffget //3<CR>

" Tabs
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'
" nmap <C-w> :bd<CR>

" Lintchecking
let g:syntastic_checkers_python = ['pylint']
"let g:syntastic_checkers_python = ['flake8']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
nnoremap <leader>c :SyntasticCheck<CR>

let g:jedi#auto_initialization = 1
let g:jedi#completions_enabled = 1
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappings = 0
let g:jedi#popup_on_dot = 0
let g:jedi#completions_command = ""
let g:jedi#show_call_signatures = "1"

nnoremap <leader>f :bnext<CR>
nnoremap <leader>p :bprevious<CR>
nnoremap <leader>t :noautocmd vimgrep /TODO/ **/*.*<CR>
nnoremap <leader>x :noautocmd vimgrep /FIXME/ **/*.*<CR>

" sortieren eines Bereichs
vnoremap <leader>s :sort<CR>
" Bereich Einrückung anpassen
vnoremap < <gv
vnoremap > >gv

set incsearch
set lines=82
set columns=110

set undodir=~/.vim/undofiles
set undofile
set undolevels=1000

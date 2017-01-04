execute pathogen#infect()

inoremap jk <ESC>

let mapleader = "\<Space>"

filetype plugin indent on

"Colors/Themes
syntax on 
set background=dark
colorscheme solarized 
let g:airline_theme='solarized'
set t_Co=256

set encoding=utf-8
set number
set relativenumber

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_swift_checkers = ['swiftpm']


"Tabs/Indentations
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set textwidth=150
set linebreak

"Airline Settings
set laststatus=2

"NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeWinSize=28
let NERDTreeMinimalUI=1

"Tagbar
nmap <F8> :TagbarToggle<CR>

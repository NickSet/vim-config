execute pathogen#infect()

filetype plugin indent on
set nocompatible

set clipboard=unnamedplus

"Auto Commands
autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
autocmd FileType cpp nnoremap <buffer> <localleader>c I//<esc>
autocmd FileType cpp nnoremap <buffer> <localleader>uc 0xx
autocmd FileType cpp :iabbrev <buffer> frlp for (int i = 0; i <; i++) {<cr><cr>}<esc>?;<cr>i
autocmd FileType * unlet! g:airline#extensions#whitespace#checks
autocmd FileType vimwiki let g:airline#extensions#whitespace#checks = [ 'indent' ]
autocmd FileType markdown let g:airline#extensions#whitespace#checks = [ 'indent' ]

"Change swap directory
set dir=/tmp

"Mappings
let maplocalleader = "\<Space>"
let mapleader = "\<Space>"
inoremap jk <ESC>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
noremap <leader>sv :source $MYVIMRC<cr>

"Better Whitespace
nnoremap <leader>sw :StripWhitespace<cr>

"Colors/Themes
syntax on
set background=dark
colorscheme onedark
let g:airline_theme='onedark'
set termguicolors

set encoding=utf-8
set number

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
set textwidth=80
set linebreak

"Airline Settings
set laststatus=2

"NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeWinSize=28
let NERDTreeMinimalUI=1

"Tagbar
nmap <F8> :TagbarToggle<CR>

"Markdown
let g:markdown_fenced_languages = ['cpp', 'bash=sh', 'swift', 'python']

"Python

"SimpylFold
let g:SimpylFold_docstring_preview = 1

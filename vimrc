execute pathogen#infect()


let mapleader = "\<Space>"
let maplocalleader = "\<Space>"

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
inoremap jk <ESC>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
noremap <leader>sv :source $MYVIMRC<cr>

"Better Whitespace
nnoremap <leader>sw :StripWhitespace<cr>

"Wiki
let g:vimwiki_list = [{'path': '~/Dropbox/wikis/', 'path_html': '~/Dropbox/wikis/', 'template_path': '~/.vim/wiki-templates/', 'auto_toc': 1, 'syntax': 'markdown', 'ext': '.md'},
    \ {'path': '~/Dropbox/wikis/programming/', 'path_html': '~/Dropbox/wikis/programming-html', 'templaet_path': '~/.vim/wiki-templates/', 'auto_toc': 1}]

"Colors/Themes
syntax on
set background=dark
colorscheme solarized 
let g:airline_theme='solarized'
colorscheme solarized
let g:airline_theme='solarized'
set t_Co=256
let g:solarized_termcolors=256

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

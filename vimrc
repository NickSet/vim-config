execute pathogen#infect()


let mapleader = "\<Space>"
let maplocalleader = "\<Space>"

filetype plugin indent on
set nocompatible

"Auto Commands
autocmd FileType cpp nnoremap <buffer> <localleader>c I//<esc>
autocmd FileType cpp nnoremap <buffer> <localleader>uc 0xx
autocmd FileType cpp :iabbrev <buffer> frlp for (int i = 0; i <; i++) {<cr><cr>}<esc>?;<cr>i

"Mappings
inoremap jk <ESC>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
noremap <leader>sv :source $MYVIMRC<cr>

"Better Whitespace
nnoremap <leader>sw :StripWhitespace<cr>
let g:better_whitespace_filetypes_blacklist=['md', 'markdown', 'diff', 'gitcommit', 'unite', 'qf', 'help']

"Wiki
let g:vimwiki_list = [{'path': '~/Dropbox/wikis/college/', 'path_html': '~/Dropbox/wikis/college-html/', 'template_path': '~/.vim/wiki-templates/', 'auto_toc': 1},
    \ {'path': '~/Dropbox/wikis/programming/', 'path_html': '~/Dropbox/wikis/programming-html', 'templaet_path': '~/.vim/wiki-templates/', 'auto_toc': 1}]

"Colors/Themes
set t_Co=256
syntax on
set background=dark
colorscheme solarized
let g:airline_theme='solarized'

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

"Markdown
let g:vim_markdown_folding_disabled = 1

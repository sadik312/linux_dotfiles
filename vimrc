syntax on

set nu
set incsearch
set tabstop=4
set shiftwidth=4
inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
call plug#begin('~/.vim/plugged')
set ttimeout
set ttimeoutlen=1
set ttyfast

Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end() 

set background=dark

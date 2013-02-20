set nocompatible
set mouse=a
execute pathogen#infect()
filetype plugin indent on
syntax enable
set background=dark
colorscheme twilight
set guifont=Inconsolata:h18
imap kj <Esc>
let g:snips_author = "K. M. Lawson"
let g:pandoc_no_folding = 1
au BufNewFile,BufRead *.txt   set filetype=pandoc

set nocompatible
set mouse=a
execute pathogen#infect()
" Central swap files
set backupdir=~/.backups
set directory=~/.swaps
" Highlight curren line
set cursorline
" Ignore case
set ignorecase
" Show status line always:
set laststatus=2
" Show cursor position:
set ruler
" Don't show intro message
set shortmess=atI

filetype plugin indent on
syntax enable
set background=dark
colorscheme ir_black
set guifont=Inconsolata:h18
imap kj <Esc>
let g:snips_author = "K. M. Lawson"
let g:pandoc_no_folding = 1
au BufNewFile,BufRead *.txt   set filetype=pandoc

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc


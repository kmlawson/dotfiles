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
" Always show line numbers:
set number
set history=200
filetype plugin indent on
syntax enable
set background=dark
colorscheme ir_black
set guifont=Inconsolata:h18
let g:snips_author = "K. M. Lawson"
let g:pandoc_no_folding = 1
au BufNewFile,BufRead *.txt   set filetype=pandoc
set path=/Users/fool/shell/,/Users/fool/Dropbox/Elements/,/Users/fool/Documents/Docs/Reference/,,
set wrap linebreak nolist
 
let mapleader = ","

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" REMAPPING:
" Set shortcut for show invisibles: 
nmap <leader>l :set list!<CR>
imap kj <Esc>
" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
" Remap so that default move is display lines not real lines:
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j
" I prefer to move more often by WORDS than by words
nnoremap w W
nnoremap w W
nnoremap e E
nnoremap E e
nnoremap b B
nnoremap B b
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%
nmap <leader>v :tabedit $MYVIMRC<CR>

" Functions

function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc


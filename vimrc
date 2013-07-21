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
" Spelling on by default
set spell
" Remember lots of previous commands:
set history=200
filetype plugin indent on
syntax enable
" Things seem to slow down significantly with long lines so:
" Note that syntax highlighting will stop after 200 chars in a single line
set synmaxcol=200
" Use par for formatting of paragraphs:
set formatprg=par
" Set tab info:
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set background=dark
colorscheme ir_black
set guifont=Inconsolata:h18
let g:vmail_flagged_color="ctermfg=yellow ctermbg=black cterm=bold"
let g:snips_author = "K. M. Lawson"
let g:pandoc_no_folding = 1
au BufNewFile,BufRead *.txt   set filetype=pandoc
set path=/Users/fool/shell/,/Users/fool/Dropbox/Elements/,/Users/fool/Documents/Docs/Reference/,,
set dictionary+=/Users/fool/dotfiles/dict.txt
set wrap linebreak nolist
" Autosave when lose focus:
autocmd BufLeave,FocusLost * silent! wall
set spelllang=en_gb " I guess I should learn if I'm moving there
 
let mapleader = ","

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" REMAPPING:
" Set shortcut for show invisibles: 
nmap <leader>l :set list!<CR>
" Shortcut for turning spell check on:
nmap <silent> <leader>s :set spell!<CR>
imap kj <Esc>
imap df * 
" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
" Remap so that default move is display lines not real lines:
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j
" I prefer to move more often by WORDS than by words
nnoremap w W
nnoremap W w
nnoremap e E
nnoremap E e
nnoremap b B
nnoremap B b

nnoremap <silent> [b :bprevious
nnoremap <silent> ]b :bnext
nnoremap [w <C-W>w
nnoremap [o o<Esc> k
nnoremap [O O<Esc>

cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%
nmap <leader>v :tabedit $MYVIMRC<CR>
map <leader>t :s/\<\(\w\)\(\w*\)\>/\u\1\L\2/g<CR>

" Functions

function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" Set working directory:
autocmd BufEnter * silent! lcd %:p:h
" cd /Users/fool/Documents/Docs/
command! -bang -nargs=* W :call W(<q-bang>, <q-args>) 

function! W(bang, filename) 
    :exe "w".a:bang." ". substitute(a:filename, ' ', '\\ ', 'g') 
endfunc

" :au CursorHold * exe "normal g\<c-g>"
" :au CursorHoldI * exe "normal g\<c-g>" this is a test

" function! WC()
"     if  getline(1) != '' 
"         if &modified || !exists("b:wordcount") 
"                 let l:old_status = v:statusmsg  
"                 let position = getpos(".") 
"                 execute "silent normal g\<c-g>"
"                 let b:wordcount = str2nr(split(v:statusmsg)[11])
"                 let v:statusmsg = l:old_status 
"                 call setpos('.', position) 
"                 return b:wordcount
"         else
"                 return b:wordcount
"         endif
"     endif
" endfunction 
" 
" :set statusline=wc:%{WC()} 

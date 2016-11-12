" KEYMAPPINGS
"DISABLED DEFAULT MAPPING: UNSET SHORTCUTS {{{
" Unmapping help from F1 and Ctrl-F1 for use toggling the reference manual
" the :h topic feature works, and <leader><F1> displays quickref
inoremap <F1> <nop>
nnoremap <F1> <nop>
vnoremap <F1> <nop>
"unmap the suspend function
map <C-z> <Nop>
"}}}

" Set mapleader
let g:mapleader=","

" Toggle paste mode
nmap <silent> <F4> :set invpaste<CR>:set paste?<CR>
imap <silent> <F4> <ESC>:set invpaste<CR>:set paste?<CR>

" spacebar create/open/close folding
nmap <silent> <Space> za
vmap <silent> <Space> zf

" enable/disable list
nmap <silent> <C-l> :set nolist!<CR>

" Map escape key to jj or <leader>e
imap jj <ESC>

"" Fast saving
nmap <leader>w :w!<cr>

" :W sudo saves the file
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

" Move visual block
vnoremap <c-J> :m '>+1<CR>gv=gv
vnoremap <c-K> :m '<-2<CR>gv=gv

" Spell commands
nmap ?n ]s
nmap ?p [s
nmap ?+ zg
nmap ?? z=

" Make Y consistent with C and D
nnoremap Y y$

" jump to start/end of line
noremap H ^
noremap L $

" easier formatting of paragraphs
vmap Q gq
nmap Q gqap

" Keep search pattern at the center of the screen
nmap <silent> n nzz
nmap <silent> N Nzz
nmap <silent> * *zz
nmap <silent> # #zz
nmap <silent> g* g*zz
nmap <silent> g# g#zz

" Circular windows navigation
nmap <C-j> <c-w>w
nmap <C-k> <c-w>W

nnoremap <silent> <C-w>1 :only<CR>
nnoremap <silent> <C-w>2 :only<CR> <C-w>v
nnoremap <silent> <C-w>3 :only<CR> <C-w>v<C-w>s
nnoremap <silent> <C-w>4 :only<CR> <C-w>v<C-w>s<C-w>h<C-w>s

" switch to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>

" set text wrapping toggles
nmap <silent> tw :set invwrap<cr>:set wrap?<cr>

" Underline the current line with '-'
nmap <silent> <leader>ul :t.<CR>Vr-

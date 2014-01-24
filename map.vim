" KEYMAPPINGS
" Set mapLeader
let mapleader=","
let g:mapleader=","

" I can type :help on my own, thanks.
map <F1> <ESC>

" F2 = Paste Toggle
set pastetoggle=<F2>

" spacebar create/open/close folding
nmap <silent> <Space> za
vmap <silent> <Space> zf

" enable/disable list
nmap <silent> <Leader>L :set nolist!<CR>

" ,/ turn off search highlighting
nmap <F4> :set hls! <cr>
nnoremap <silent><CR> :nohlsearch<CR><CR>

" Map escape key to jj or <Leader>e
imap jj <ESC>
imap <Leader>e <ESC>

" Sudo to write
cmap w!! :w !sudo tee % >/dev/null

" Quick alignment of text
nmap <Leader>al :left<CR>
nmap <Leader>ar :right<CR>
nmap <Leader>ac :center<CR>

" Spell commands
map <Leader>sn ]s
map <Leader>sp [s
map <Leader>sa zg
map <Leader>s? z=

" Improve up/down movement on wrapped lines
nmap j gj
nmap k gk

" Make Y consistent with C and D. See :help Y.
nmap Y y$

" jump to start/end of line
noremap H ^
noremap L $

" easier formatting of paragraphs
vmap Q gq
nmap Q gqap

" Use tab to indent a line
vmap < <gv
vmap > >gv

" Easier increment/decrement
nmap + <C-a>
nmap - <C-x>

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

" move between buffers
nmap <C-S-TAB> :bprev<CR>
nmap <C-TAB> :bnext<CR>

" switch to the directory of the open buffer
map <Leader>cd :cd %:p:h<cr>

" set text wrapping toggles
nmap <silent> <Leader>tw :set invwrap<CR>:set wrap?<CR>

" Creating underline/overline headings for markup languages
" Inspired by http://sphinx.pocoo.org/rest.html#sections
nmap <Leader>1 yyPVr=jyypVr=
nmap <Leader>2 yyPVr-jyypVr-
nmap <Leader>3 yypVr=
nmap <Leader>4 yypVr-

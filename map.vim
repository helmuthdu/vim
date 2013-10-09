" KEYMAPPINGS
" Set mapleader
let mapleader=","
let g:mapleader=","

" I can type :help on my own, thanks.
nmap <F1> <Esc>

" F2 = Paste Toggle
set pastetoggle=<F2>

" spacebar create/open/close folding
nmap <silent> <Space> za
vmap <silent> <Space> zf

" enable/disable list
nmap <silent> <leader>L :set nolist!<CR>

" ,/ turn off search highlighting
nmap <Leader>/ :noh<CR>

" Map escape key to jj or <Leader>e
imap jj <ESC>
imap <Leader>e <ESC>

" Sudo to write
cmap w!! :w !sudo tee % >/dev/null

" Quick alignment of text
nmap <leader>al :left<CR>
nmap <leader>ar :right<CR>
nmap <leader>ac :center<CR>

" Spell commands
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

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

" move between buffers
nmap <C-S-TAB> :bprev<CR>
nmap <C-TAB> :bnext<CR>

" move between windows
" nmap <C-h> <C-w>h
" nmap <C-j> <C-w>j
" nmap <C-k> <C-w>k
" nmap <C-l> <C-w>l

" switch to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>

" set text wrapping toggles
nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>

" Creating underline/overline headings for markup languages
" Inspired by http://sphinx.pocoo.org/rest.html#sections
nmap <leader>1 yyPVr=jyypVr=
nmap <leader>2 yyPVr-jyypVr-
nmap <leader>3 yypVr=
nmap <leader>4 yypVr-

" KEYMAPPINGS
" Set mapleader
let g:mapleader=","

" Session List
nmap <leader>sl :SessionList<CR>
nmap <leader>ss :SessionSave<CR>
nmap <leader>sc :SessionClose<CR>

" netrw
map <silent> <C-o> :Explore<CR>

" I can type :help on my own, thanks.
map <F1> <ESC>

" F12 = Paste Toggle
set pastetoggle=<F12>

" spacebar create/open/close folding
nmap <silent> <Space> za
vmap <silent> <Space> zf

" enable/disable list
nmap <silent> <Leader>l :set nolist!<CR>

" ,/ turn off search highlighting
nmap <silent><Leader>/ :nohls<CR>

" Map escape key to jj or <Leader>e
imap jj <ESC>

" Sudo to write
cmap w!! :w !sudo tee % >/dev/null

" Quick alignment of text
nmap <Leader>al :left<CR>
nmap <Leader>ar :right<CR>
nmap <Leader>ac :center<CR>

" Spell commands
nmap <Leader>sn ]s
nmap <Leader>sp [s
nmap <Leader>sa zg
nmap <Leader>s? z=

" Improve up/down movement on wrapped lines
nmap j gj
nmap k gk

" Make Y consistent with C and D
nmap Y y$

" jump to start/end of line
noremap H ^
noremap L $

" easier formatting of paragraphs
vmap Q gq
nmap Q gqap

" Use tab to indent a line
vmap > >gv
vmap < <gv

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

" Drag Current Line/s Vertically
vmap <A-j> :m'>+<CR>gv
vmap <A-k> :m-2<CR>gv

" move between buffers
nmap <C-S-TAB> :bprev<CR>
nmap <C-TAB> :bnext<CR>

" switch to the directory of the open buffer
map <Leader>cd :cd %:p:h<cr>

" set text wrapping toggles
nmap <silent> tw :set invwrap<CR>:set wrap?<CR>

" Map <Leader>ff to display all lines with keyword under cursor
" and ask which one to jump to
nmap <F12> [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>

" Creating underline/overline headings for markup languages
" Inspired by http://sphinx.pocoo.org/rest.html#sections
nmap <Leader>1 yyPVr=jyypVr=
nmap <Leader>2 yyPVr-jyypVr-
nmap <Leader>3 yypVr=
nmap <Leader>4 yypVr-

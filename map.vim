" KEYMAPPINGS
"DISABLED DEFAULT MAPPING: UNSET SHORTCUTS {{{
  " Unmapping help from F1 and Ctrl-F1 for use toggling the reference manual
  " the :h topic feature works, and <Leader><F1> displays quickref
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

" netrw
map <silent> <C-o> :Explore<CR>

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
nmap ?n ]s
nmap ?p [s
nmap ?+ zg
nmap ?? z=

" Session controls
nmap <leader>sl :SessionList<CR>
nmap <leader>ss :SessionSave<CR>
nmap <leader>sc :SessionClose<CR>

" Make Y consistent with C and D
nnoremap Y y$

" jump to start/end of line
noremap H ^
noremap L $

" easier formatting of paragraphs
vmap Q gq
nmap Q gqap

" Map command-[ and command-] to indenting or outdenting while keeping the
" original selection in visual mode
if OSX()
  vmap <D-]> >gv
  vmap <D-[> <gv
  nmap <D-]> >>
  nmap <D-[> <<
  imap <D-]> <Esc>>>i
  imap <D-[> <Esc><<i
else
  vmap <A-]> >gv
  vmap <A-[> <gv
  nmap <A-]> >>
  nmap <A-[> <<
  imap <A-]> <Esc>>>i
  imap <A-[> <Esc><<i
endif

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
" Bubble single lines
if OSX()
  nmap <D-j> :m .+1<CR>==
  nmap <D-k> :m .-2<CR>==
  imap <D-j> <Esc>:m .+1<CR>==gi
  imap <D-k> <Esc>:m .-2<CR>==gi
  vmap <D-j> :m '>+1<CR>gv=gv
  vmap <D-k> :m '<-2<CR>gv=gv
else
  nnoremap <A-j> :m .+1<CR>==
  nnoremap <A-k> :m .-2<CR>==
  inoremap <A-j> <Esc>:m .+1<CR>==gi
  inoremap <A-k> <Esc>:m .-2<CR>==gi
  vnoremap <A-j> :m '>+1<CR>gv=gv
  vnoremap <A-k> :m '<-2<CR>gv=gv
endif

nnoremap <silent> 1 :only<CR>
nnoremap <silent> 2 :only<CR> <C-w>v
nnoremap <silent> 3 :only<CR> <C-w>v<C-w>s
nnoremap <silent> 4 :only<CR> <C-w>v<C-w>s<C-w>h<C-w>s

" search and replace the word under the cursor
nnoremap <C-h> :%s/\<<C-r><C-w>\>/

" switch to the directory of the open buffer
map <Leader>cd :cd %:p:h<cr>

" set text wrapping toggles
nmap <silent> tw :set invwrap<CR>:set wrap?<CR>

" Map <Leader>ff to display all lines with keyword under cursor and ask which
" one to jump to
nmap <F12> [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>

" Underline the current line with '-'
nmap <silent> <leader>ul :t.<CR>Vr-

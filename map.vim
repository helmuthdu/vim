" KEYMAPPINGS
" Set mapleader
let mapleader=","
let g:mapleader=","
" F2 = Paste Toggle
set pastetoggle=<F2>
" calculate the value in one line
map <silent><Leader>cl :call CalcLine(".")<CR>
" spacebar create/open/close folding
nmap <silent> <Space> za
vmap <silent> <Space> zf
" enable/disable list
nmap <silent> <leader>L :set nolist!<CR>
" ,/ turn off search highlighting
nmap <leader>/ :nohl<CR>
" Map escape key to jj or <Leader>e
imap jj <esc>
imap <Leader>e <esc>
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
" easier formatting of paragraphs
vmap Q gq
nmap Q gqap
" Use tab to indent a line
vmap <TAB> >gv
vmap <S-TAB> <gv
vmap < <gv
vmap > >gv
" move between buffers
nmap <C-S-TAB> :bprev<CR>
nmap <C-TAB> :bnext<CR>
" Close tab/Quit vim
if g:OS#unix
  nmap <C-w> :bw<CR>
  nmap <C-q> :q<CR>
endif
" switch to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>
" copy/cut/paste
vmap <Leader>d "+x
vmap <Leader>y "+y
imap <Leader>p <C-R>*
cmap <Leader>p <C-R>+
" set text wrapping toggles
nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>
" Creating underline/overline headings for markup languages
" Inspired by http://sphinx.pocoo.org/rest.html#sections
nmap <leader>1 yyPVr=jyypVr=
nmap <leader>2 yyPVr-jyypVr-
nmap <leader>3 yypVr=
nmap <leader>4 yypVr-

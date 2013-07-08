" PLUGINS CONFIG
" calendar
"map <leader>ca :Calendar<CR>
"let g:calendar_list = [
"\   {'name': 'Tasks', 'path': $HOME.'/.vim/.tasks', 'ext': 'task'},
"\   {'name': 'Diary', 'path': $HOME.'/.vim/.diary', 'ext': 'diary'},
"\ ]
"let g:calendar_current_idx = 1

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cache_dir = $HOME.'/.vim/.ctrlp_cache'
let g:ctrlp_max_height = 15
let g:ctrlp_clear_cache_on_exit = 1
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_match_window_bottom = 0

nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>m :CtrlPMRUFiles<CR>

let g:ctrlp_custom_ignore = {
      \ 'dir':  '\.git$\|\.hg$\|\.svn$',
      \ 'file': '\.exe$\|\.so$\|\.dll$',
      \ 'link': 'some_bad_symbolic_links',
      \ }

" easymotion
let g:EasyMotion_leader_key = '<Leader>e'
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment

" easytags
if g:OS#mac
  let g:easytags_cmd = '/usr/local/bin/ctags'
end
let g:easytags_file = $HOME.'/.vim/.tags'
set tags=./.tags;
let g:easytags_events = ['BufWritePost']
let g:easytags_dynamic_files = 2
let g:easytags_python_enabled = 1

" fugitive
nmap <silent> <leader>gs :Gstatus<CR>
nmap <silent> <leader>gd :Gdiff<CR>
nmap <silent> <leader>gc :Gcommit<CR>
nmap <silent> <leader>gb :Gblame<CR>
nmap <silent> <leader>gl :Glog<CR>
nmap <silent> <leader>gp :Git push<CR>

" indentline
let g:indentLine_char = '│'

" less
nmap <Leader>css :w <BAR> !lessc % > %:t:r.css<CR><space>

" markdown preview
nmap <silent><leader>p :MDP<CR>
let g:MarkdownPreviewTMP = $HOME.'/Sites/'

" NERDcommenter
let NERDSpaceDelims=1
" map <Leader>/ <Plug>NERDCommenterToggle<CR>
" vmap <Leader>/ <Plug>NERDCommenterToggle<CR>

" NERDTree
let g:nerdtree_tabs_open_on_gui_startup=0
let g:nerdtree_tabs_open_on_console_startup=0

nmap <silent><Leader>nt :NERDTreeMirrorToggle<CR>
let g:NERDTreeBookmarksFile = expand($HOME.'/.vim/.NERDTreeBookmarks')
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeChDirMode = 1
let g:NERDTreeWinPos = "right"
let g:NERDTreeWinSize = 45
let g:NERDTreeChristmasTree = 1
let g:NERDTreeCaseSensitiveSort = 1
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeMouseMode=2
let g:NERDTreeIgnore=[
      \'\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$',
      \ '\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$' ]

" neocomplcache
set completeopt-=preview
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_auto_select = 0
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_snippets_dir = $HOME.'/.vim/bundle/vim-snippets/snippets/'
let g:neocomplcache_temporary_dir = $HOME.'/.vim/.neocon'
let g:neosnippet#enable_snipmate_compatibility = 1
" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
" Plugin key-mappings.
if g:OS#gui
  imap <C-Space> <Plug>(neosnippet_expand_or_jump)
  smap <C-Space> <Plug>(neosnippet_expand_or_jump)
else
  imap <C-@> <Plug>(neosnippet_expand_or_jump)
  smap <C-@> <Plug>(neosnippet_expand_or_jump)
endif
" " SuperTab like snippets behavior.
" imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  " \ "\<Plug>(neosnippet_expand_or_jump)"
  " \: pumvisible() ? "\<C-n>" : "\<TAB>"
" smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  " \ "\<Plug>(neosnippet_expand_or_jump)"
  " \: "\<TAB>"
" Recommended key-mappings.
imap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
imap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<TAB>"
imap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
" Enable omni completion.
if has("autocmd") && exists("+omnifunc")
  autocmd Filetype *
    \ if &omnifunc == "" |
    \ setlocal omnifunc=syntaxcomplete#Complete |
    \ endif
endif
" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
if &t_Co >= 256 || g:OS#gui
  let g:Powerline_symbols = 'fancy'
endif

" rainbow parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" syntastic
let g:syntastic_enable_balloons = 1
let g:syntastic_auto_loc_list=2
let g:syntastic_auto_jump=0
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'

" tabularize
if exists(":Tabularize")
  vmap <Leader>t=  :Tabularize /=<CR>
  vmap <Leader>t3  :Tabularize /#<CR>
  vmap <Leader>t'  :Tabularize /'<CR>
  vmap <Leader>t'' :Tabularize /"<CR>
  vmap <Leader>t0  :Tabularize /)/r1c1l0<CR>
  vmap <Leader>t== :Tabularize /=/r1c1l0<CR>
  vmap <Leader>t:  :Tabularize /:\zs<CR>
endif

" tagbar
if g:OS#mac
  "how to install ctag mac https://weblion.psu.edu/trac/weblion/wiki/MacVim
  let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
endif
let g:tagbar_width = 30
let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1
let g:tagbar_compact = 1
let g:tagbar_expand = 0
nmap <silent><leader>T :TagbarToggle<CR>

" undotree
nmap <leader>u :UndotreeToggle<CR>

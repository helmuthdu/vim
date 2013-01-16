" PLUGINS CONFIG
" buftabs
let g:buftabs_active_highlight_group="WarningMsg"
let g:buftabs_inactive_highlight_group="Visual"
let g:buftabs_only_basename=1

" buftergator
let g:buffergator_autoexpand_on_split=0
let g:buffergator_viewport_split_policy="R"
let g:buffergator_suppress_keymaps=1
nmap <leader>b :BuffergatorToggle<CR>

" calendar
"map <leader>ca :Calendar<CR>
"let g:calendar_list = [
"\   {'name': 'Tasks', 'path': $HOME.'/.vim/.tasks', 'ext': 'task'},
"\   {'name': 'Diary', 'path': $HOME.'/.vim/.diary', 'ext': 'diary'},
"\ ]
"let g:calendar_current_idx = 1
"
" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cache_dir = $HOME.'/.vim/.ctrlp_cache'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_max_height = 15
"let g:ctrlp_clear_cache_on_exit = 1
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_match_window_bottom = 0

nmap <leader>pb :CtrlPBuffer<CR>
nmap <leader>pm :CtrlPMRUFiles<CR>

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
let g:easytags_dynamic_files = 1

" fugitive
nmap <silent> <leader>gs :Gstatus<CR>
nmap <silent> <leader>gd :Gdiff<CR>
nmap <silent> <leader>gc :Gcommit<CR>
nmap <silent> <leader>gb :Gblame<CR>
nmap <silent> <leader>gl :Glog<CR>
nmap <silent> <leader>gp :Git push<CR>

" indentline
" chars: ╎╏┆┇│┃
let g:indentLine_char = '│'

" markdown preview
nmap <silent><leader>p :MDP<CR>
let g:MarkdownPreviewTMP = $HOME.'/Sites/'

" NERDTree
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

let g:nerdtree_tabs_open_on_gui_startup=0
let g:nerdtree_tabs_open_on_console_startup=0

" neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_auto_select = 0
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_enable_auto_delimiter = 1
let g:neocomplcache_max_list = 15
let g:neocomplcache_auto_completion_start_length = 2
let g:neocomplcache_force_overwrite_completefunc = 1
let g:neocomplcache_snippets_dir = $HOME.'/.vim/bundle/snipmate-snippets/snippets/'
let g:neocomplcache_temporary_dir = $HOME.'/.vim/.neocon'
" Plugin key-mappings.
if g:OS#gui
  imap <C-Space> <Plug>(neocomplcache_snippets_expand)
  smap <C-Space> <Plug>(neocomplcache_snippets_expand)
else
  imap <C-@> <Plug>(neocomplcache_snippets_expand)
  smap <C-@> <Plug>(neocomplcache_snippets_expand)
endif
" Recommended key-mappings.
imap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
imap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<TAB>"
imap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
" Enable omni completion.
au FileType css setlocal omnifunc=csscomplete#CompleteCSS
au FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
au FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
au FileType python setlocal omnifunc=pythoncomplete#Complete
au FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
au FileType c set omnifunc=ccomplete#Complete
au FileType java set omnifunc=javacomplete#Complete
" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

" powerline
source /usr/lib/python2.7/site-packages/powerline/ext/vim/source_plugin.vim
if &t_Co >= 256 || g:OS#gui
  let g:Powerline_symbols = 'fancy'
  "let g:Powerline_cache_file = ""
endif

" rainbow parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2
let g:syntastic_auto_jump=0

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
end
let g:tagbar_width = 30
let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1
let g:tagbar_compact = 1
let g:tagbar_expand = 0
nmap <silent><leader>T :TagbarToggle<CR>

" undotree
nmap <leader>u :UndotreeToggle<CR>

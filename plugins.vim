" PLUGINS CONFIG
" calendar
"map <Leader>ca :Calendar<CR>
"let g:calendar_list = [
"\   {'name': 'Tasks', 'path': $HOME.'/.vim/.tasks', 'ext': 'task'},
"\   {'name': 'Diary', 'path': $HOME.'/.vim/.diary', 'ext': 'diary'},
"\ ]
"let g:calendar_current_idx = 1

" airline-case
let g:airline_enable_branch=1
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_inactive_collapse=1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#ctrlp#show_adjacent_modes = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline_theme='wombat'
if g:OS#gui
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
  if g:OS#unix
    let g:airline_left_sep = ''
    let g:airline_right_sep = ''
    let g:airline_symbols.branch = ''
    let g:airline_symbols.linenr = ''
  else
    let g:airline_left_sep = '▶'
    let g:airline_right_sep = '◀'
  endif
endif

" buffergator
nmap <Leader>B :BuffergatorToggle<CR>
let g:buffergator_suppress_keymaps = 1
let g:buffergator_viewport_split_policy = "R"
let g:buffergator_autoexpand_on_split = 0

" coffeescript
let coffee_indent_keep_current = 1

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cache_dir = $HOME.'/.vim/.ctrlp_cache'
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_extensions = ['funky']

nmap <silent><Leader>m :CtrlPMRUFiles<CR>
nmap <silent><Leader>f :CtrlPFunky<CR>
nmap <silent><Leader>b :CtrlPBuffer<CR>
nmap <silent><Leader>T :CtrlPBufTag<CR>

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

" emmet
let g:user_emmet_leader_key = '<C-e>'

" fugitive
nmap <silent><Leader>gb :Gblame<CR>
nmap <silent><Leader>gc :Gcommit<CR>
nmap <silent><Leader>gd :Gdiff<CR>
nmap <silent><Leader>gl :Glog<CR>
nmap <silent><Leader>gm :Gmove<CR>
nmap <silent><Leader>gs :Gstatus<CR>
nmap <silent><Leader>gp :Git push<CR>

" indentline
let g:indentLine_char = '│'
let g:indentLine_indentLevel = 20
let g:indentLine_bufNameExclude = ['_.*', 'NERD_tree.*']

let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_color_change_percent = 10

" less
nmap <Leader>css :w <BAR> !lessc % > %:t:r.css<CR><space>

" NERDcommenter
let NERDSpaceDelims=1
nmap <silent> <Leader>/ :call NERDComment(0, "toggle")<CR>
vmap <silent> <Leader>/ :call NERDComment(0, "toggle")<CR>
vmap <silent> <Leader>? :call NERDComment(0, "sexy")<CR>

" NERDTree
nmap <silent><Leader>nt :NERDTreeToggle<CR>
nmap <silent><C-o> :NERDTreeToggle<CR><C-w>p:NERDTreeFind<CR>
let g:NERDTreeBookmarksFile = expand($HOME.'/.vim/.NERDTreeBookmarks')
let g:NERDTreeWinPos = "right"
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeChDirMode = 1
let g:NERDTreeWinSize = 40
let g:NERDTreeChristmasTree = 1
let g:NERDTreeCaseSensitiveSort = 1
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeMouseMode=2
let g:NERDTreeIgnore=[
      \'\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$',
      \ '\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$' ]

" rainbow parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" scroll-position
let g:scroll_position_visual = 2

" signify
let g:signify_sign_overwrite = 1
let g:signify_sign_add = '+'
let g:signify_sign_change = '!'
let g:signify_sign_delete = '-'
let g:signify_sign_delete_first_line = '-'

" syntastic
let g:syntastic_enable_balloons = 1
let g:syntastic_auto_loc_list=2
let g:syntastic_auto_jump=0
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'

" tabularize
vmap <Leader>t= :Tabularize /=<CR>
vmap <Leader>t# :Tabularize /#<CR>
vmap <Leader>t' :Tabularize /'<CR>
vmap <Leader>t" :Tabularize /"<CR>
vmap <Leader>t) :Tabularize /)/r1c1l0<CR>
vmap <Leader>t== :Tabularize /=/r1c1l0<CR>
vmap <Leader>t: :Tabularize /:\zs<CR>

" undotree
nmap <Leader>u :UndotreeToggle<CR>

" ultisnips
let g:UltiSnipsExpandTrigger = "<Tab>"
let g:UltiSnipsJumpForwardTrigger = "<Tab>"
let g:UltiSnipsJumpBackwardTrigger = "<S-tab>"
let g:UltiSnipsListSnippets="<C-Tab>"

" YouCompleteMe
let g:ycm_register_as_syntastic_checker = 1
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
if g:OS#gui
  let g:ycm_key_invoke_completion = '<C-Space>'
else
  let g:ycm_key_invoke_completion = '<C-@>'
endif

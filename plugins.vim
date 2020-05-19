" PLUGINS CONFIG
" gruvbox
  let g:gruvbox_contrast_dark='hard'

" ale
  let g:ale_enabled = 1
  let g:ale_fix_on_save = 1
  let g:jsx_ext_required = 0
  let g:ale_lint_on_enter = 0
  let g:ale_set_loclist = 1
  let g:ale_set_quickfix = 1
  let g:ale_fixers = {
        \  'javascript': ['eslint', 'prettier'],
        \  'typescript': ['tslint', 'prettier'],
        \  'css': ['prettier'],
        \  'less': ['prettier'],
        \  'scss': ['prettier'],
        \  'json': ['prettier'],
        \  'graphql': ['prettier'],
        \  'markdown': ['prettier'],
        \  'vue': ['prettier'],
        \}
  let g:ale_linters = {
        \  'javascript': ['stylelint', 'eslint'],
        \  'typescript': ['tslint'],
        \  'css': ['stylelint', 'eslint'],
        \}
  let g:ale_set_signs = 1
  let g:ale_sign_error='✗'
  let g:ale_sign_warning ='⚠'

" airline
  let g:airline_detect_modified=1
  let g:airline_detect_paste=1
  let g:airline_inactive_collapse=1
  let g:airline_powerline_fonts = 1
  "let g:bufferline_echo = 0
  "let g:airline#extensions#bufferline#enabled = 1
  let g:airline#extensions#ale#enabled = 1
  let g:airline#extensions#hunks#enabled = 1
  let g:airline#extensions#ctrlp#show_adjacent_modes = 1
  let g:airline#extensions#whitespace#enabled = 1
  let g:airline_theme='tender'
  let g:airline_left_sep = ''
  let g:airline_right_sep = ''
  if GUI()
    if !exists('g:airline_symbols')
      let g:airline_symbols = {}
    endif
    if !exists('g:airline_powerline_fonts')
      "let g:airline_left_sep = ''
      "let g:airline_right_sep = ''
      let g:airline_symbols.branch = ''
      let g:airline_symbols.linenr = ''
    endif
  endif

" buffergator
  nmap <silent><leader>b :EasyBufferHorizontal<CR>
  let g:easybuffer_horizontal_height = '15'

" ctrlp
  let g:ctrlp_cache_dir = $HOME.'/.vim/.ctrlp_cache'
  let g:ctrlp_working_path_mode = 'ra'
  let g:ctrlp_extensions = ['funky']

  nmap <silent>cp :CtrlPMixed<CR>
  nmap <silent>cm :CtrlPMRUFiles<CR>
  nmap <silent>cf :CtrlPFunky<CR>
  nmap <silent>cl :CtrlPLine<CR>
  nmap <silent>cb :CtrlPBuffer<CR>
  nmap <silent>ct :CtrlPBufTag<CR>

  let g:ctrlp_custom_ignore = {
        \ 'dir': '\.git$\|\.hg$\|\.svn|\bower_components|\node_modules$',
        \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$' }

  " On Windows use "dir" as fallback command.
  if WINDOWS()
    let s:ctrlp_fallback = 'dir %s /-n /b /s /a-d'
  elseif executable('ag')
    let s:ctrlp_fallback = 'ag %s --nocolor -l -g ""'
  elseif executable('ack')
    let s:ctrlp_fallback = 'ack %s --nocolor -f'
  else
    let s:ctrlp_fallback = 'find %s -type f'
  endif

  let g:ctrlp_user_command = {
        \ 'types': {
        \ 1: ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others'],
        \ 2: ['.hg', 'hg --cwd %s locate -i .'],
        \ },
        \ 'fallback': s:ctrlp_fallback
        \ }

" easymotion
  let g:EasyMotion_leader_key = 'e'
  hi link EasyMotionTarget ErrorMsg
  hi link EasyMotionShade  Comment

" emmet
  let g:user_emmet_leader_key = '!'

" indent guides
  let g:indentLine_char = '│'
  let g:indentLine_faster = 1

" NERDCommenter
  nmap ; <Plug>NERDCommenterToggle
  vmap ; <Plug>NERDCommenterToggle

" NERDTree
  map <silent> <C-o> :NERDTreeToggle<CR>
  let g:NERDTreeBookmarksFile = expand($HOME.'/.vim/.NERDTreeBookmarks')
  let g:NERDTreeWinPos = "left"
  let g:NERDTreeShowBookmarks = 1
  let g:NERDTreeWinSize = 30
  let g:NERDTreeChristmasTree = 1
  let g:NERDTreeCaseSensitiveSort = 1
  let g:NERDTreeQuitOnOpen = 1
  let g:NERDTreeShowHidden = 1
  let g:NERDTreeMouseMode = 2
  let NERDTreeAutoDeleteBuffer=1
  let g:NERDTreeIgnore = [
        \ 'node_modules',
        \ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$',
        \ '\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$' ]

" rainbow parentheses
  let g:rainbow_active = 1

" signify
  let g:signify_sign_overwrite         = 1
  let g:signify_sign_add               = '+'
  let g:signify_sign_change            = '!'
  let g:signify_sign_delete            = '-'
  let g:signify_sign_delete_first_line = '-'

" startify
  let g:startify_change_to_dir          = 0
  let g:startify_enable_special         = 0
  let g:startify_files_number           = 8
  let g:startify_session_autoload       = 1
  let g:startify_session_delete_buffers = 1
  let g:startify_session_persistence    = 1

" tabularize
  nmap <leader>a&     :Tabularize /&<CR>
  vmap <leader>a&     :Tabularize /&<CR>
  nmap <leader>a#     :Tabularize /#<CR>
  vmap <leader>a#     :Tabularize /#<CR>
  nmap <leader>a=     :Tabularize /^[^=]*\zs=<CR>
  vmap <leader>a=     :Tabularize /^[^=]*\zs=<CR>
  nmap <leader>a=>    :Tabularize /=><CR>
  vmap <leader>a=>    :Tabularize /=><CR>
  nmap <leader>a:     :Tabularize /:<CR>
  vmap <leader>a:     :Tabularize /:<CR>
  nmap <leader>a::    :Tabularize /:\zs<CR>
  vmap <leader>a::    :Tabularize /:\zs<CR>
  nmap <leader>a,     :Tabularize /,<CR>
  vmap <leader>a,     :Tabularize /,<CR>
  nmap <leader>a,,    :Tabularize /,\zs<CR>
  vmap <leader>a,,    :Tabularize /,\zs<CR>
  nmap <leader>a<Bar> :Tabularize /<Bar><CR>
  vmap <leader>a<Bar> :Tabularize /<Bar><CR>

" undotree
  nmap <silent>U :UndotreeToggle<CR>
  " If undotree is opened, it is likely one wants to interact with it.
  let g:undotree_SetFocusWhenToggle=1

" vim-over
  nnoremap <C-h> :OverCommandLine<CR>%s/<C-r><C-w>/

" deoplete
  let deoplete_readme=expand('~/.vim/bundle/deoplete.nvim/README.md')
  if filereadable(deoplete_readme)
    let g:deoplete#enable_at_startup = 1
    let g:deoplete#enable_auto_delimiter = 1
    let g:deoplete#force_overwrite_completefunc = 1

    " SuperTab like snippets behavior.
    imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
    \ "\<Plug>(neosnippet_expand_or_jump)"
    \: pumvisible() ? "\<C-n>" : "\<TAB>"
    smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
    \ "\<Plug>(neosnippet_expand_or_jump)"
    \: "\<TAB>"

    " Some convenient mappings
    imap <expr><C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
    imap <expr><C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
    imap <expr><Esc> pumvisible() ? "\<C-y>\<Esc>" : "\<Esc>"

    " deoplete-ternjs
    let g:deoplete#sources#ternjs#docs = 1

    " Enable heavy omni completion.
    if !exists('g:deoplete#sources#omni#input_patterns')
      let g:deoplete#sources#omni#input_patterns = {}
    endif
    let g:deoplete#sources#omni#input_patterns.c='[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?'
    let g:deoplete#sources#omni#input_patterns.cpp='[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'
    let g:deoplete#sources#omni#input_patterns.xml='<[^>]*'
    let g:deoplete#sources#omni#input_patterns.html='<[^>]*'
    let g:deoplete#sources#omni#input_patterns.markdown='<[^>]*'
    let g:deoplete#sources#omni#input_patterns.css='^\s\+\w+\|\w+[):;]?\s\+\|[@!]'
    let g:deoplete#sources#omni#input_patterns.less='^\s\+\w+\|\w+[):;]?\s\+\|[@!]'
    let g:deoplete#sources#omni#input_patterns.javascript='[^. \t]\.\%(\h\w*\)\?'
    let g:deoplete#sources#omni#input_patterns.typescript='[^. \t]\.\%(\h\w*\)\?'
    let g:deoplete#sources#omni#input_patterns.json='[^. \t]\.\%(\h\w*\)\?'
    let g:deoplete#sources#omni#input_patterns.python='[^. *\t]\.\h\w*\|\h\w*::'
    let g:deoplete#sources#omni#input_patterns.ruby='[^. *\t]\.\w*\|\h\w*::'
    let g:deoplete#sources#omni#input_patterns.php='[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'
    let g:deoplete#sources#omni#input_patterns.python3='[^. *\t]\.\h\w*\|\h\w*::'
    let g:deoplete#sources#omni#input_patterns.go='\h\w*\%.'
    let g:deoplete#sources#omni#input_patterns.perl='\h\w*->\h\w*\|\h\w*::'
    let g:deoplete#sources#omni#input_patterns.java='\%(\h\w*\|)\)\.'
  endif

  " For snippet_complete marker.
  if has('conceal')
    set conceallevel=2 concealcursor=i
  endif

  " Enable omni completion.
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

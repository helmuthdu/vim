" PLUGINS CONFIG
" calendar
  nmap <Leader>ca :Calendar<CR>
  let g:calendar_list = [
  \   {'name': 'Tasks', 'path': $HOME.'/.vim/.tasks', 'ext': 'task'},
  \   {'name': 'Diary', 'path': $HOME.'/.vim/.diary', 'ext': 'diary'},
  \ ]
  let g:calendar_current_idx = 1

" airline-case
  let g:airline_enable_branch=1
  let g:airline_detect_modified=1
  let g:airline_detect_paste=1
  let g:airline_inactive_collapse=1
  let g:bufferline_echo = 0
  let g:airline#extensions#syntastic#enabled = 1
  let g:airline#extensions#bufferline#enabled = 1
  let g:airline#extensions#hunks#enabled = 1
  let g:airline#extensions#ctrlp#show_adjacent_modes = 1
  let g:airline#extensions#whitespace#enabled = 1
  let g:airline_theme='wombat'
  if GUI()
    if !exists('g:airline_symbols')
      let g:airline_symbols = {}
    endif
    if !exists('g:airline_powerline_fonts')
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
  nmap <silent><Leader>b :BuffergatorToggle<CR>
  let g:buffergator_suppress_keymaps = 1
  let g:buffergator_viewport_split_policy = "R"
  let g:buffergator_autoexpand_on_split = 0

" coffeescript
  let coffee_indent_keep_current = 1
  autocmd BufWritePost *.coffee silent make!

" ctrlp
  let g:ctrlp_map = 'cp'
  let g:ctrlp_cache_dir = $HOME.'/.vim/.ctrlp_cache'
  let g:ctrlp_working_path_mode = 'ra'
  let g:ctrlp_extensions = ['funky']

  nmap <silent>cm :CtrlPMRUFiles<CR>
  nmap <silent>cf :CtrlPFunky<CR>
  nmap <silent>cl :CtrlPLine<CR>
  nmap <silent>cb :CtrlPBuffer<CR>
  nmap <silent>ct :CtrlPBufTag<CR>
  nmap <silent>cx :CtrlPMixed<CR>

  let g:ctrlp_custom_ignore = {
        \ 'dir': '\.git$\|\.hg$\|\.svn$',
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

" easytags
  if OSX()
    let g:easytags_cmd = '/usr/local/bin/ctags'
  end
  let g:easytags_file = $HOME.'/.vim/.tags'
  set tags=./.tags;

" emmet
  let g:user_emmet_leader_key = '<C-e>'

" fugitive
  nmap <silent> <leader>gs :Gstatus<CR>
  nmap <silent> <leader>gd :Gdiff<CR>
  nmap <silent> <leader>gc :Gcommit<CR>
  nmap <silent> <leader>gb :Gblame<CR>
  nmap <silent> <leader>gl :Glog<CR>
  nmap <silent> <leader>gp :Git push<CR>
  nmap <silent> <leader>gr :Gread<CR>
  nmap <silent> <leader>gw :Gwrite<CR>
  nmap <silent> <leader>ge :Gedit<CR>
  " Mnemonic _i_nteractive
  nmap <silent> <leader>gi :Git add -p %<CR>
  nmap <silent> <leader>gg :SignifyToggle<CR>

" indent guides
  let g:indentLine_char = '│'

" less
  nmap <Leader>css :w <BAR> !lessc % > %:t:r.css<CR><space>

" NERDTree
  nmap <silent><Leader>nt :NERDTreeToggle<CR>
  let g:NERDTreeBookmarksFile = expand($HOME.'/.vim/.NERDTreeBookmarks')
  let g:NERDTreeWinPos = "right"
  let g:NERDTreeShowBookmarks = 1
  let g:NERDTreeWinSize = 40
  let g:NERDTreeChristmasTree = 0
  let g:NERDTreeCaseSensitiveSort = 1
  let g:NERDTreeQuitOnOpen = 1
  let g:NERDTreeShowHidden = 1
  let g:NERDTreeMouseMode = 2
  let g:NERDTreeIgnore=[
        \'\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$',
        \ '\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$' ]

" rainbow parentheses
  au VimEnter * RainbowParenthesesToggle
  au Syntax * RainbowParenthesesLoadRound
  au Syntax * RainbowParenthesesLoadSquare
  au Syntax * RainbowParenthesesLoadBraces

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
  vmap <Leader>a=  :Tabularize /=<CR>
  vmap <Leader>a#  :Tabularize /#<CR>
  vmap <Leader>a'  :Tabularize /'<CR>
  vmap <Leader>a"  :Tabularize /"<CR>
  vmap <Leader>a)  :Tabularize /)/r1c1l0<CR>
  vmap <Leader>a== :Tabularize /=/r1c1l0<CR>
  vmap <Leader>a:  :Tabularize /:<CR>
  vmap <Leader>a:: :Tabularize /:\zs<CR>
  vmap <Leader>a,  :Tabularize /,<CR>
  vmap <Leader>a,, :Tabularize /,\zs<CR>

" undotree
  nmap <silent>U :UndotreeToggle<CR>
  " If undotree is opened, it is likely one wants to interact with it.
  let g:undotree_SetFocusWhenToggle=1

  let neocomplete_readme=expand('~/.vim/bundle/neocomplete.vim/README.md')
  if WINDOWS() || filereadable(neocomplete_readme)
  " neocomplete
    set completeopt-=preview
    " Use neocomplete.
    let g:neocomplete#enable_at_startup = 1
    " Use smartcase.
    let g:neocomplete#enable_smart_case = 1
    " Set minimum syntax keyword length.
    let g:neocomplete#sources#syntax#min_keyword_length = 3
    let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
    " Define keyword.
    if !exists('g:neocomplete#keyword_patterns')
        let g:neocomplete#keyword_patterns = {}
    endif
    let g:neocomplete#keyword_patterns['default'] = '\h\w*'

    " SuperTab like snippets behavior.
    imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
    \ "\<Plug>(neosnippet_expand_or_jump)"
    \: pumvisible() ? "\<C-n>" : "\<TAB>"
    smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
    \ "\<Plug>(neosnippet_expand_or_jump)"
    \: "\<TAB>"

    " Some convenient mappings
    imap <expr><C-j>  pumvisible() ? "\<C-n>" : "\<TAB>"
    imap <expr><C-k>  pumvisible() ? "\<C-p>" : "\<TAB>"
    imap <expr><Esc> pumvisible() ? "\<C-e>" : "\<Esc>"
    imap <expr><CR> pumvisible() ? "\<C-y>" : "\<CR>"
  else
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
    if GUI()
      let g:ycm_key_invoke_completion = '<C-Space>'
    else
      let g:ycm_key_invoke_completion = '<C-@>'
    endif
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

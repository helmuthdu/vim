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

" coc
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
  inoremap <silent><expr> <TAB>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ coc#refresh()
  inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
  endfunction

  " Use <c-space> to trigger completion.
  if has('nvim')
    inoremap <silent><expr> <c-space> coc#refresh()
  else
    inoremap <silent><expr> <c-@> coc#refresh()
  endif

  " Make <CR> auto-select the first completion item and notify coc.nvim to
  " format on enter, <cr> could be remapped by other vim plugin
  inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                                \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

  " Use `[g` and `]g` to navigate diagnostics
  " Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
  nmap <silent> [g <Plug>(coc-diagnostic-prev)
  nmap <silent> ]g <Plug>(coc-diagnostic-next)

  " GoTo code navigation.
  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gr <Plug>(coc-references)

  " Use K to show documentation in preview window.
  nnoremap <silent> K :call <SID>show_documentation()<CR>

  function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
      execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
      call CocActionAsync('doHover')
    else
      execute '!' . &keywordprg . " " . expand('<cword>')
    endif
  endfunction

  " Highlight the symbol and its references when holding the cursor.
  autocmd CursorHold * silent call CocActionAsync('highlight')

  " Symbol renaming.
  nmap <leader>rn <Plug>(coc-rename)

  " Formatting selected code.
  xmap <leader>f  <Plug>(coc-format-selected)
  nmap <leader>f  <Plug>(coc-format-selected)

  augroup mygroup
    autocmd!
    " Setup formatexpr specified filetype(s).
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    " Update signature help on jump placeholder.
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
  augroup end

  " Applying codeAction to the selected region.
  " Example: `<leader>aap` for current paragraph
  xmap <leader>a  <Plug>(coc-codeaction-selected)
  nmap <leader>a  <Plug>(coc-codeaction-selected)

  " Remap keys for applying codeAction to the current buffer.
  nmap <leader>ac  <Plug>(coc-codeaction)
  " Apply AutoFix to problem on the current line.
  nmap <leader>qf  <Plug>(coc-fix-current)

  " Map function and class text objects
  " NOTE: Requires 'textDocument.documentSymbol' support from the language server.
  xmap if <Plug>(coc-funcobj-i)
  omap if <Plug>(coc-funcobj-i)
  xmap af <Plug>(coc-funcobj-a)
  omap af <Plug>(coc-funcobj-a)
  xmap ic <Plug>(coc-classobj-i)
  omap ic <Plug>(coc-classobj-i)
  xmap ac <Plug>(coc-classobj-a)
  omap ac <Plug>(coc-classobj-a)

  " Remap <C-f> and <C-b> for scroll float windows/popups.
  if has('nvim-0.4.0') || has('patch-8.2.0750')
    nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
    nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
    inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
    inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
    vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
    vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  endif

  " Use CTRL-S for selections ranges.
  " Requires 'textDocument/selectionRange' support of language server.
  nmap <silent> <C-s> <Plug>(coc-range-select)
  xmap <silent> <C-s> <Plug>(coc-range-select)

  " Add `:Format` command to format current buffer.
  command! -nargs=0 Format :call CocAction('format')

  " Add `:Fold` command to fold current buffer.
  command! -nargs=? Fold :call     CocAction('fold', <f-args>)

  " Add `:OR` command for organize imports of the current buffer.
  command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

  " Add (Neo)Vim's native statusline support.
  " NOTE: Please see `:h coc-status` for integrations with external plugins that
  " provide custom statusline: lightline.vim, vim-airline.
  set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

  " Mappings for CoCList
  " Show all diagnostics.
  nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
  " Manage extensions.
  nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
  " Show commands.
  nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
  " Find symbol of current document.
  nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
  " Search workspace symbols.
  nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
  " Do default action for next item.
  nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
  " Do default action for previous item.
  nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
  " Resume latest coc list.
  nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

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

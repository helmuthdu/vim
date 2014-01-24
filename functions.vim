" FUNCTIONS
function! ToggleSpell()
  if &spell
    if &spelllang == "pt"
      set spelllang=pt,en
      echo "toggle spell" &spelllang
    elseif &spelllang == "pt,en"
      set spelllang=en
      echo "toggle spell" &spelllang
    else
      set spell!
      echo "toggle spell off"
    endif
  else
    set spelllang=pt
    set spell!
    echo "toogle spell" &spelllang
  endif
endfunction
" Toggle Spellcheck
nmap <silent><Leader>ss :call ToggleSpell()<CR>

" Convert text case
function! TwiddleCase(str)
  if a:str ==# toupper(a:str)
    let result = tolower(a:str)
  elseif a:str ==# tolower(a:str)
    let result = substitute(a:str,'\(\<\w\+\>\)', '\u\1', 'g')
  else
    let result = toupper(a:str)
  endif
  return result
endfunction
vmap ~ ygv"=TwiddleCase(@")<CR>Pgv

" Convert variable case
function! TwistCase(str)
  if a:str =~# '^[a-z0-9_]\+[!?]\?$'
    let result = substitute(a:str, '_', '-', 'g')
  elseif a:str =~# '^[a-z0-9?!-]\+[!?]\?$'
    let result = substitute(a:str, '\C-\([^-]\)', '\u\1', 'g')
  elseif a:str =~# '^[a-z0-9]\+\([A-Z][a-z0-9]*\)\+[!?]\?$'
    let result = toupper(a:str[0]) . strpart(a:str, 1)
  elseif a:str =~# '^\([A-Z][a-z0-9]*\)\{2,}[!?]\?$'
    let result = strpart(substitute(a:str, '\C\([A-Z]\)', '_\l\1', 'g'), 1)
  else
    let result = toupper(a:str)
  endif
  return result
endfunction
vmap ' ygv"=TwistCase(@")<CR>Pgv

function! DualView()
  if &columns == '80'
    set lines=50 columns=160
    only
    vsplit
  else
    set lines=50 columns=80
    only
  endif
endfunction
nmap <Leader>d :call DualView()<CR>

function! LastModified()
  if &modified
    let save_cursor = getpos(".")
    let n = min([20, line("$")])
    exe '1,' . n . 's#^\(.\{,10}Last Change:\).*#\1'
          \ strftime("%a %d/%b/%Y hs %H:%M") . '#e'
    call setpos('.', save_cursor)
  endif
endfun
autocmd BufWritePre * call LastModified()

function! MyFoldText()
  let line = getline(v:foldstart)

  let nucolwidth = &fdc + &number * &numberwidth
  let windowwidth = winwidth(0) - nucolwidth - 3
  let foldedlinecount = v:foldend - v:foldstart

  " expand tabs into spaces
  let onetab = strpart('          ', 0, &tabstop)
  let line = substitute(line, '\t', onetab, 'g')

  let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
  let fillcharcount = windowwidth - len(line) - len(foldedlinecount) - 4
  return line . ' …' . repeat(" ",fillcharcount) . foldedlinecount . ' '
endfunction

fun! ToggleFold()
  if &foldmethod == 'marker'
    exe 'set foldmethod=indent'
  else
    exe 'set foldmethod=marker'
  endif
endfun
map <leader>F :call ToggleFold()<cr>

" Syntax highlighting in code snippets
function! s:syntax_include(lang, b, e, inclusive)
  let syns = split(globpath(&rtp, "syntax/".a:lang.".vim"), "\n")
  if empty(syns)
    return
  endif

  if exists('b:current_syntax')
    let csyn = b:current_syntax
    unlet b:current_syntax
  endif

  let z = "'" " Default
  for nr in range(char2nr('a'), char2nr('z'))
    let char = nr2char(nr)
    if a:b !~ char && a:e !~ char
      let z = char
      break
    endif
  endfor

  silent! exec printf("syntax include @%s %s", a:lang, syns[0])
  if a:inclusive
    exec printf('syntax region %sSnip start=%s\(\)\(%s\)\@=%s ' .
                \ 'end=%s\(%s\)\@<=\(\)%s contains=@%s containedin=ALL',
                \ a:lang, z, a:b, z, z, a:e, z, a:lang)
  else
    exec printf('syntax region %sSnip matchgroup=Snip start=%s%s%s ' .
                \ 'end=%s%s%s contains=@%s containedin=ALL',
                \ a:lang, z, a:b, z, z, a:e, z, a:lang)
  endif

  if exists('csyn')
    let b:current_syntax = csyn
  endif
endfunction

function! s:file_type_handler()
  if &ft =~ 'jinja' && &ft != 'jinja'
    call s:syntax_include('jinja', '{{', '}}', 1)
    call s:syntax_include('jinja', '{%', '%}', 1)
  elseif &ft == 'mkd' || &ft == 'markdown'
    let map = { 'bash': 'sh' }
    for lang in ['ruby', 'yaml', 'vim', 'sh', 'bash', 'python', 'java', 'c']
      call s:syntax_include(get(map, lang, lang), '```'.lang, '```', 0)
    endfor

    if &background == 'light'
      highlight def Snip ctermfg=231
    else
      highlight def Snip ctermfg=232
    endif
    set textwidth=80
  endif
endfunction

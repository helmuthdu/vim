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

function! ScreenMovement(movement)
  if &wrap
    return "g" . a:movement
  else
    return a:movement
  endif
endfunction
omap <silent> <expr> j ScreenMovement("j")
omap <silent> <expr> k ScreenMovement("k")
omap <silent> <expr> 0 ScreenMovement("0")
omap <silent> <expr> ^ ScreenMovement("^")
omap <silent> <expr> $ ScreenMovement("$")
nmap <silent> <expr> j ScreenMovement("j")
nmap <silent> <expr> k ScreenMovement("k")
nmap <silent> <expr> 0 ScreenMovement("0")
nmap <silent> <expr> ^ ScreenMovement("^")
nmap <silent> <expr> $ ScreenMovement("$")

" press ~ to convert the text to UPPER CASE, then to lower case, then to Title Case.
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
map <leader>ff :call ToggleFold()<cr>

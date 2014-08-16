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
    echo "toggle spell" &spelllang
  endif
endfunction
" Toggle spell check
nmap <silent>ts :call ToggleSpell()<CR>

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
vmap ^ ygv"=TwistCase(@")<CR>Pgv

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
nmap <silent><Leader>d :call DualView()<CR>

function! LastModified()
  if &modified
    let save_cursor = getpos(".")
    let n = min([20, line("$")])
    exe '1,' . n . 's#^\(.\{,10}Last Change:\).*#\1'
          \ strftime("%a %d/%b/%Y hr %H:%M") . '#e'
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
map <silent>tf :call ToggleFold()<cr>

function! StripTrailingWhitespace()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " do the business:
  %s/\s\+$//e
  " clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

" Enable the auto-creation of missing folders in a save path
if !exists('*s:MakeNewDir')
  function s:MakeNewDir(fullpath, buf)
    if empty(getbufvar(a:buf,'&buftype')) && a:fullpath!~#'\v^\w+\:\/'
      let dirpath=fnamemodify(a:fullpath,':h')
      if !isdirectory(dirpath)|call mkdir(dirpath,'p')|endif
    endif
  endfunction
  augroup WriteDir
    autocmd!
    autocmd BufWritePre * :call s:MakeNewDir(expand('<afile>'),+expand('<abuf>'))
  augroup END
endif

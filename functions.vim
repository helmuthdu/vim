" FUNCTIONS
fun! ToggleSpell()
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
endfun
" Toggle spell check
nmap <silent>ts :call ToggleSpell()<CR>

fun! FoldText()
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
endfun

fun! ToggleFold()
  if &foldmethod == "indent"
    set foldmethod=syntax
  else
    set foldmethod=indent
  endif
endfun
nmap <silent>tf :call ToggleFold()<CR>

fun! StripTrailingWhitespace()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " do the business:
  %s/\s\+$//e
  " clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfun

fun! Clipboard()
  reg
  echo "Item: "
  let char = nr2char(getchar())
  if char != "\<Esc>"
    execute "normal! \"".char."p"
  endif
  redraw
endfun
command! -nargs=0 Clipboard call Clipboard()
nmap <silent>C :call Clipboard()<cr>

function! ToggleNetrw()
  if g:netrw_is_open
    let i = bufnr("$")
    while (i >= 1)
      if (getbufvar(i, "&filetype") == "netrw")
        silent exe "bwipeout " . i
      endif
      let i-=1
    endwhile
    let g:netrw_is_open=0
  else
    let g:netrw_is_open=1
    silent Lexplore
  endif
endfunction
let g:netrw_is_open=0
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
noremap <silent> <C-o> :call ToggleNetrw()<CR>

" Enable the auto-creation of missing folders in a save path
if !exists('*s:MakeNewDir')
  function s:MakeNewDir(fullpath, buf)
    if empty(getbufvar(a:buf,'&buftype')) && a:fullpath!~#'\v^\w+\:\/'
      let dirpath=fnamemodify(a:fullpath,':h')
      if !isdirectory(dirpath)|call mkdir(dirpath,'p')|endif
    endif
  endfun
  augroup WriteDir
    autocmd!
    autocmd BufWritePre * :call s:MakeNewDir(expand('<afile>'),+expand('<abuf>'))
  augroup END
endif

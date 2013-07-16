" AUTOCOMMANDS
if has("autocmd")
  au BufEnter * execute ":lcd " . expand("%:p:h")
  augroup filetypedetect
    au BufEnter *.markdown,*.mkd,*.md setlocal wrap tw=79
    au BufEnter *.json setl ft=javascript
    au BufEnter *.coffee setl sw=2
    au BufEnter *.py setl ts=4 sw=4 sts=4
    au BufEnter *.php setl ts=4 sw=4 sts=4
    au BufEnter *.html setl ts=2 sw=2 sts=2
    au BufEnter *.tex setl wrap tw=79 fo=tcqor noet
    au BufEnter *.[ch] setl cindent
    au BufEnter *.[ch]pp setl cindent
    au BufEnter Makefile setl ts=4 sts=4 sw=4 noet list
  augroup END

  " when enabling diff for a buffer it should be disabled when the
  " buffer is not visible anymore
  au BufHidden * if &diff == 1 | diffoff | setlocal nowrap | endif

  " Automatically removing all trailing whitespace
  autocmd BufWritePre * :%s/\s\+$//e

  " Jump to the last position when reopening a file
  augroup JumpCursorOnEdit
    au!
    autocmd BufReadPost *
          \ if expand("<afile>:p:h") !=? $TEMP |
          \ if line("'\"") > 1 && line("'\"") <= line("$") |
          \ let JumpCursorOnEdit_foo = line("'\"") |
          \ let b:doopenfold = 1 |
          \ if (foldlevel(JumpCursorOnEdit_foo) > foldlevel(JumpCursorOnEdit_foo - 1)) |
          \ let JumpCursorOnEdit_foo = JumpCursorOnEdit_foo - 1 |
          \ let b:doopenfold = 2 |
          \ endif |
          \ exe JumpCursorOnEdit_foo |
          \ endif |
          \ endif
    " Need to postpone using "zv" until after reading the modelines.
    autocmd BufWinEnter *
          \ if exists("b:doopenfold") |
          \ exe "normal zv" |
          \ if(b:doopenfold > 1) |
          \ exe "+".1 |
          \ endif |
          \ unlet b:doopenfold |
          \ endif
  augroup END

  " Save on FocusLost
  autocmd FocusLost * nested :silent! wall
endif

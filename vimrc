" Select OS
if has("win32") || has("win32unix")
  let g:OS#name = "win"
  let g:OS#win = 1
  let g:OS#mac = 0
  let g:OS#unix = 0
elseif has("mac")
  let g:OS#name = "mac"
  let g:OS#mac = 1
  let g:OS#win = 0
  let g:OS#unix = 0
elseif has("unix")
  let g:OS#name = "unix"
  let g:OS#unix = 1
  let g:OS#win = 0
  let g:OS#mac = 0
endif
if has("gui_running")
  let g:OS#gui = 1
else
  let g:OS#gui = 0
endif

source $HOME/.vim/settings.vim
source $HOME/.vim/map.vim
source $HOME/.vim/bundles.vim
source $HOME/.vim/plugins.vim
source $HOME/.vim/functions.vim
source $HOME/.vim/autocmd.vim

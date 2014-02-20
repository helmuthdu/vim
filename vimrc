" Identify platform
silent function! OSX()
  return has('macunix')
endfunction
silent function! LINUX()
  return has('unix') && !has('macunix') && !has('win32unix')
endfunction
silent function! WINDOWS()
  return (has('win16') || has('win32') || has('win64'))
endfunction
silent function! GUI()
  return (has('gui_running'))
endfunction

source $HOME/.vim/settings.vim
source $HOME/.vim/map.vim
source $HOME/.vim/bundles.vim
source $HOME/.vim/plugins.vim
source $HOME/.vim/functions.vim
source $HOME/.vim/autocmd.vim

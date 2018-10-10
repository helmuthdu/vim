" Required:
if has('vim_starting')
  set nocompatible
  set sessionoptions-=options
endif

" PLUGINS BUNDLE
if has('nvim') && empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
elseif empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plug Groups
" List only the plugin groups you will use
if !exists('g:bundle_groups')
  let g:bundle_groups=['general', 'devel', 'languages', 'colorscheme']
endif

" Plugs here:
" GENERAL

call plug#begin(expand($HOME.'/.vim/bundle'))
if count(g:bundle_groups, 'general')
  if executable('ack')
    Plug 'mileszs/ack.vim'
  endif
  Plug 'itchyny/calendar.vim'
  Plug 'Lokaltog/vim-easymotion'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'Stormherz/tablify'
  Plug 'bling/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'mbbill/undotree'
  Plug 'Konfekt/FastFold'
  Plug 'mhinz/vim-startify'
  Plug 'troydm/easybuffer.vim'
  Plug 'yuttie/comfortable-motion.vim'
  Plug 'chrisbra/vim-diff-enhanced'
  Plug 'itchyny/vim-cursorword'
endif
" DEVELOPER
if count(g:bundle_groups, 'devel')
  if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugs' }
  else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
  endif
  Plug 'Shougo/neosnippet'
  Plug 'Shougo/neosnippet-snippets'
  Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
  Plug 'osyo-manga/vim-over'
  Plug 'mattn/emmet-vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'Yggdroot/indentLine'
  Plug 'godlygeek/tabular'
  Plug 'luochen1990/rainbow'
  Plug 'airblade/vim-gitgutter'
  Plug 'scrooloose/nerdcommenter'
  Plug 'w0rp/ale'
endif
" LANGUAGES
if count(g:bundle_groups, 'languages')
  Plug 'ap/vim-css-color'
  Plug 'sheerun/vim-polyglot'
  Plug 'othree/html5.vim'
  Plug 'othree/javascript-libraries-syntax.vim'
  Plug 'othree/yajs.vim'
  Plug 'leafgarland/typescript-vim'
endif
" COLORSCHEME
if count(g:bundle_groups, 'colorscheme')
  Plug 'pulcinello/tender.vim'
  Plug 'morhetz/gruvbox'
  Plug 'sjl/badwolf'
endif
call plug#end()

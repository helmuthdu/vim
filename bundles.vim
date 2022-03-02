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
  Plug 'Konfekt/FastFold'
  Plug 'easymotion/vim-easymotion'
  Plug 'Stormherz/tablify'
  Plug 'chrisbra/vim-diff-enhanced'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'itchyny/calendar.vim'
  Plug 'itchyny/vim-cursorword'
  Plug 'mbbill/undotree'
  Plug 'mhinz/vim-startify'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'troydm/easybuffer.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'yuttie/comfortable-motion.vim'
  if has('nvim')
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
  else
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'tacahiroy/ctrlp-funky'
  endif
endif
" DEVELOPER
if count(g:bundle_groups, 'devel')
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }
  Plug 'osyo-manga/vim-over'
  Plug 'mattn/emmet-vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'scrooloose/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'Yggdroot/indentLine'
  Plug 'godlygeek/tabular'
  Plug 'airblade/vim-gitgutter'
  Plug 'scrooloose/nerdcommenter'
  Plug 'w0rp/ale'
endif
" LANGUAGES
if count(g:bundle_groups, 'languages')
  Plug 'ap/vim-css-color'
  Plug 'sheerun/vim-polyglot'
endif
" COLORSCHEME
if count(g:bundle_groups, 'colorscheme')
  Plug 'jacoborus/tender.vim'
  Plug 'morhetz/gruvbox'
  Plug 'sjl/badwolf'
endif
call plug#end()

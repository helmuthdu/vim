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
  Plug 'Stormherz/tablify'
  Plug 'chrisbra/vim-diff-enhanced'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'itchyny/calendar.vim'
  Plug 'itchyny/vim-cursorword'
  Plug 'mbbill/undotree'
  Plug 'mhinz/vim-startify'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'yuttie/comfortable-motion.vim'
  if has('nvim')
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
    Plug 'ggandor/lightspeed.nvim'
  else
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'tacahiroy/ctrlp-funky'
    Plug 'easymotion/vim-easymotion'
  endif
endif
" DEVELOPER
if count(g:bundle_groups, 'devel')
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }
  Plug 'osyo-manga/vim-over'
  Plug 'mattn/emmet-vim'
  Plug 'Yggdroot/indentLine'
  Plug 'godlygeek/tabular'
  Plug 'airblade/vim-gitgutter'
  Plug 'dense-analysis/ale'
  if has('nvim')
    Plug 'numToStr/Comment.nvim'
    Plug 'windwp/nvim-autopairs'
  else
    Plug 'scrooloose/nerdcommenter'
    Plug 'jiangmiao/auto-pairs'
  endif
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


if has('nvim')
  lua require('Comment').setup()
endif

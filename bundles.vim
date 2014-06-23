" PLUGINS BUNDLE
let vundle_readme=expand($HOME.'/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
  echo "Installing Plugin.."
  echo ""
  silent !mkdir -p $HOME/.vim/bundle
  silent !git clone https://github.com/gmarik/vundle $HOME/.vim/bundle/vundle/
endif

" Required:
if has('vim_starting')
  set nocompatible
  set runtimepath+=$HOME/.vim/bundle/vundle/
  set sessionoptions-=options
endif

call vundle#rc(expand($HOME.'/.vim/bundle/'))
Bundle 'gmarik/vundle'

" Plugin Groups
" List only the plugin groups you will use
if !exists('g:bundle_groups')
  let g:bundle_groups=['general', 'devel', 'web_devel', 'colorscheme']
endif

" Plugins here:
" GENERAL
if count(g:bundle_groups, 'general')
  " Plugin 'gregsexton/VimCalc'
  Plugin 'hotoo/calendar-vim'
  Plugin 'Lokaltog/vim-easymotion'
  Plugin 'Stormherz/tablify'
  Plugin 'bling/vim-airline'
  Plugin 'paranoida/vim-airlineish'
  Plugin 'bling/vim-bufferline'
  Plugin 'hwrod/interactive-replace'
  Plugin 'troydm/easybuffer.vim'
  Plugin 'kien/ctrlp.vim'
  Plugin 'mbbill/undotree'
  Plugin 'mhinz/vim-startify'
  Plugin 'mtth/locate.vim'
  Plugin 'tpope/vim-vinegar'
  Plugin 'tacahiroy/ctrlp-funky'
  Plugin 'jrhorn424/vim-multiple-cursors'
  Plugin 'tpope/vim-surround'
  Plugin 'tpope/vim-unimpaired'
  Plugin 'pocke/accelerated-smooth-scroll'
  Plugin 'chrisbra/NrrwRgn'
endif
" DEVELOPER
if count(g:bundle_groups, 'devel')
  Plugin 'Shougo/neocomplete'
  Plugin 'Shougo/neosnippet'
  Plugin 'Shougo/neosnippet-snippets'
  Plugin 'AzizLight/TaskList.vim'
  Plugin 'Yggdroot/indentLine'
  Plugin 'godlygeek/tabular'
  Plugin 'Raimondi/delimitMate'
  Plugin 'jbnicolai/rainbow_parentheses.vim'
  Plugin 'tomtom/tcomment_vim'
  Plugin 'scrooloose/syntastic'
  Plugin 'tpope/vim-fugitive'
  Plugin 'mhinz/vim-signify'
  Plugin 'gcmt/wildfire.vim'
  Plugin 'mutewinter/swap-parameters'
  Plugin 'zhaocai/GoldenView.vim'
  Plugin 'Xuyuanp/git-nerdtree'
  Plugin 'sheerun/vim-polyglot'
endif
" WEB DEVELOPER
if count(g:bundle_groups, 'web_devel')
  Plugin 'ap/vim-css-color'
  Plugin 'burnettk/vim-angular'
  Plugin 'mattn/emmet-vim'
  Plugin 'tpope/vim-bundler'
  Plugin 'tpope/vim-rails'
  Plugin 'vim-ruby/vim-ruby'
endif
" COLORSCHEME
if count(g:bundle_groups, 'colorscheme')
  Plugin 'altercation/vim-colors-solarized'
  Plugin 'morhetz/gruvbox'
  Plugin 'sjl/badwolf'
  Plugin 'reedes/vim-colors-pencil'
  Plugin 'cocopon/iceberg.vim'
endif

" automatically load filetype plugins
filetype plugin indent on

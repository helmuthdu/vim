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
Plugin 'gmarik/vundle'

" Plugin Groups
" List only the plugin groups you will use
if !exists('g:bundle_groups')
  let g:bundle_groups=['general', 'devel', 'languages', 'colorscheme']
endif

" Plugins here:
" GENERAL
if count(g:bundle_groups, 'general')
  Plugin 'hotoo/calendar-vim'
  Plugin 'Lokaltog/vim-easymotion'
  Plugin 'Stormherz/tablify'
  Plugin 'bling/vim-airline'
  Plugin 'chrisbra/NrrwRgn'
  Plugin 'kien/ctrlp.vim'
  Plugin 'tacahiroy/ctrlp-funky'
  Plugin 'kris89/vim-multiple-cursors'
  Plugin 'mbbill/undotree'
  Plugin 'mhinz/vim-startify'
  Plugin 'tpope/vim-abolish'
  Plugin 'tpope/vim-commentary'
  Plugin 'tpope/vim-fugitive'
  Plugin 'tpope/vim-repeat'
  Plugin 'tpope/vim-surround'
  Plugin 'tpope/vim-vinegar'
  Plugin 'tpope/vim-bundler'
  Plugin 'troydm/easybuffer.vim'
  Plugin 'yonchu/accelerated-smooth-scroll'
  "replace tools
  Plugin 'dkprice/vim-easygrep'
  Plugin 'hwrod/interactive-replace'
endif
" DEVELOPER
if count(g:bundle_groups, 'devel')
  Plugin 'Shougo/neocomplete'
  Plugin 'Shougo/neosnippet'
  Plugin 'Shougo/neosnippet-snippets'
  Plugin 'honza/vim-snippets'
  Plugin 'mattn/emmet-vim'
  Plugin 'AzizLight/TaskList.vim'
  Plugin 'Chiel92/vim-autoformat'
  Plugin 'Raimondi/delimitMate'
  Plugin 'Xuyuanp/git-nerdtree'
  Plugin 'Yggdroot/indentLine'
  Plugin 'gcmt/wildfire.vim'
  Plugin 'godlygeek/tabular'
  Plugin 'jbnicolai/rainbow_parentheses.vim'
  Plugin 'mhinz/vim-signify'
  Plugin 'mutewinter/swap-parameters'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'scrooloose/syntastic'
endif
" LANGUAGES
if count(g:bundle_groups, 'languages')
  Plugin 'sheerun/vim-polyglot'
  Plugin 'othree/html5.vim'
  Plugin 'pangloss/vim-javascript'
  Plugin 'othree/javascript-libraries-syntax.vim'
  Plugin 'ap/vim-css-color'
  Plugin 'burnettk/vim-angular'
  Plugin 'davidhalter/jedi-vim'
  Plugin 'tpope/vim-coffee-script'
  Plugin 'tpope/vim-rails'
  Plugin 'vim-ruby/vim-ruby'
endif
" COLORSCHEME
if count(g:bundle_groups, 'colorscheme')
  Plugin 'altercation/vim-colors-solarized'
  Plugin 'morhetz/gruvbox'
  Plugin 'sjl/badwolf'
  Plugin 'chriskempson/base16-vim'
endif

" automatically load filetype plugins
filetype plugin indent on

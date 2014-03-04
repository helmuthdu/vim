" PLUGINS BUNDLE
" Automatically install vundle if not installed
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
  let iCanHazVundle=0
endif
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
" Bundle Groups
" List only the plugin groups you will use
if !exists('g:bundle_groups')
  let g:bundle_groups=['general', 'devel', 'web_devel', 'markdown', 'colorscheme']
endif
" Bundles here:
" GENERAL
if count(g:bundle_groups, 'general')
  " Bundle 'gregsexton/VimCalc'
  Bundle 'hotoo/calendar-vim'
  Bundle 'Lokaltog/vim-easymotion'
  Bundle 'Stormherz/tablify'
  Bundle 'bling/vim-airline'
  Bundle 'paranoida/vim-airlineish'
  Bundle 'bling/vim-bufferline'
  Bundle 'hwrod/interactive-replace'
  Bundle 'jeetsukumaran/vim-buffergator'
  Bundle 'kien/ctrlp.vim'
  Bundle 'mbbill/undotree'
  Bundle 'mhinz/vim-startify'
  Bundle 'mtth/locate.vim'
  Bundle 'scrooloose/nerdtree'
  Bundle 'tpope/vim-vinegar'
  Bundle 'tacahiroy/ctrlp-funky'
  Bundle 'terryma/vim-multiple-cursors'
  Bundle 'tpope/vim-surround'
  Bundle 'tpope/vim-unimpaired'
  Bundle 'yonchu/accelerated-smooth-scroll'
endif
" DEVELOPER
if count(g:bundle_groups, 'devel')
  " NeoComplete
    Bundle 'Shougo/neocomplete.vim'
    Bundle 'Shougo/neosnippet'
    Bundle 'Shougo/neosnippet-snippets'
  " YouCompleteMe
    " Bundle 'Valloric/YouCompleteMe'
    " Bundle 'SirVer/ultisnips'
  Bundle 'AzizLight/TaskList.vim'
  Bundle 'Yggdroot/indentLine'
  Bundle 'godlygeek/tabular'
  Bundle 'Raimondi/delimitMate'
  Bundle 'kien/rainbow_parentheses.vim'
  Bundle 'tpope/vim-commentary'
  Bundle 'scrooloose/syntastic'
  Bundle 'tpope/vim-fugitive'
  Bundle 'mhinz/vim-signify'
  Bundle 'gcmt/wildfire.vim'
  if executable('ctags')
    Bundle 'xolox/vim-misc'
    Bundle 'xolox/vim-easytags'
  endif
endif
" WEB DEVELOPER
if count(g:bundle_groups, 'web_devel')
  Bundle 'paulyg/Vim-PHP-Stuff'
  Bundle 'kchmck/vim-coffee-script'
  Bundle 'jelera/vim-javascript-syntax'
  Bundle 'mattn/emmet-vim'
  Bundle 'groenewege/vim-less'
  Bundle 'ap/vim-css-color'
  Bundle 'tpope/vim-haml'
  Bundle 'mustache/vim-mustache-handlebars'
  Bundle 'vim-ruby/vim-ruby'
  Bundle 'tpope/vim-rails'
  Bundle 'tpope/vim-bundler'
endif
" MARKDOWN
if count(g:bundle_groups, 'markdown')
  Bundle 'tpope/vim-markdown'
endif
" COLORSCHEME
if count(g:bundle_groups, 'colorscheme')
  Bundle 'altercation/vim-colors-solarized'
  Bundle 'morhetz/gruvbox'
  Bundle 'sjl/badwolf'
  Bundle 'reedes/vim-colors-pencil'
endif
if iCanHazVundle == 0
  echo "Installing Bundles, please ignore key map error messages"
  echo ""
  :BundleInstall
endif

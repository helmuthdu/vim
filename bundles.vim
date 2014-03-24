" PLUGINS BUNDLE
let neobundle_readme=expand('~/.vim/bundle/neobundle.vim/README.md')
if !filereadable(neobundle_readme)
  echo "Installing NeoBundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neocomplete.vim/
endif
" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#rc(expand('~/.vim/bundle/'))
" Let NeoNeoBundle manage NeoNeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'
" NeoBundle Groups
" List only the plugin groups you will use
if !exists('g:bundle_groups')
  let g:bundle_groups=['general', 'devel', 'web_devel', 'markdown', 'colorscheme']
endif
" NeoBundles here:
" GENERAL
if count(g:bundle_groups, 'general')
  " NeoBundle 'gregsexton/VimCalc'
  NeoBundle 'hotoo/calendar-vim'
  NeoBundle 'Lokaltog/vim-easymotion'
  NeoBundle 'Stormherz/tablify'
  NeoBundle 'bling/vim-airline'
  NeoBundle 'paranoida/vim-airlineish'
  NeoBundle 'bling/vim-bufferline'
  NeoBundle 'hwrod/interactive-replace'
  NeoBundle 'jeetsukumaran/vim-buffergator'
  NeoBundle 'kien/ctrlp.vim'
  NeoBundle 'mbbill/undotree'
  NeoBundle 'mhinz/vim-startify'
  NeoBundle 'mtth/locate.vim'
  NeoBundle 'tpope/vim-vinegar'
  NeoBundle 'tacahiroy/ctrlp-funky'
  NeoBundle 'kris89/vim-multiple-cursors'
  NeoBundle 'tpope/vim-surround'
  NeoBundle 'tpope/vim-unimpaired'
  NeoBundle 'yonchu/accelerated-smooth-scroll'
  NeoBundle 'Shougo/unite.vim'
  NeoBundle 'Shougo/vimfiler.vim'
endif
" DEVELOPER
if count(g:bundle_groups, 'devel')
  " NeoComplete
    NeoBundle 'Shougo/neocomplete.vim'
    NeoBundle 'Shougo/neosnippet'
    NeoBundle 'Shougo/neosnippet-snippets'
  " YouCompleteMe
    " NeoBundle 'Valloric/YouCompleteMe'
    " NeoBundle 'SirVer/ultisnips'
  NeoBundle 'AzizLight/TaskList.vim'
  NeoBundle 'Yggdroot/indentLine'
  NeoBundle 'godlygeek/tabular'
  NeoBundle 'Raimondi/delimitMate'
  NeoBundle 'kien/rainbow_parentheses.vim'
  NeoBundle 'tpope/vim-commentary'
  NeoBundle 'scrooloose/syntastic'
  NeoBundle 'tpope/vim-fugitive'
  NeoBundle 'mhinz/vim-signify'
  NeoBundle 'gcmt/wildfire.vim'
  if executable('ctags')
    NeoBundle 'xolox/vim-misc'
    NeoBundle 'xolox/vim-easytags'
  endif
endif
" WEB DEVELOPER
if count(g:bundle_groups, 'web_devel')
  NeoBundle 'paulyg/Vim-PHP-Stuff'
  NeoBundle 'kchmck/vim-coffee-script'
  NeoBundle 'jelera/vim-javascript-syntax'
  NeoBundle 'mattn/emmet-vim'
  NeoBundle 'groenewege/vim-less'
  NeoBundle 'ap/vim-css-color'
  NeoBundle 'tpope/vim-haml'
  NeoBundle 'mustache/vim-mustache-handlebars'
  NeoBundle 'vim-ruby/vim-ruby'
  NeoBundle 'tpope/vim-rails'
  NeoBundle 'tpope/vim-bundler'
endif
" MARKDOWN
if count(g:bundle_groups, 'markdown')
  NeoBundle 'tpope/vim-markdown'
endif
" COLORSCHEME
if count(g:bundle_groups, 'colorscheme')
  NeoBundle 'altercation/vim-colors-solarized'
  NeoBundle 'morhetz/gruvbox'
  NeoBundle 'sjl/badwolf'
  NeoBundle 'reedes/vim-colors-pencil'
endif

" automatically load filetype plugins
if has('autocmd')
  filetype plugin indent on
endif
" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

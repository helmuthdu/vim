" PLUGINS BUNDLE
let vundle_readme=expand($HOME.'/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
  echo "Installing Plugin.."
  echo ""
  silent !mkdir -p $HOME/.vim/bundle
  silent !git clone https://github.com/VundleVim/Vundle.vim $HOME/.vim/bundle/Vundle.vim/
endif

" Required:
if has('vim_starting')
  set nocompatible
  set runtimepath+=$HOME/.vim/bundle/Vundle.vim/
  set sessionoptions-=options
endif

call vundle#rc(expand($HOME.'/.vim/bundle/'))
Plugin 'VundleVim/Vundle.vim'

" Plugin Groups
" List only the plugin groups you will use
if !exists('g:bundle_groups')
  let g:bundle_groups=['general', 'devel', 'languages', 'colorscheme']
endif

" Plugins here:
" GENERAL
if count(g:bundle_groups, 'general')
  if executable('ack')
    Bundle 'mileszs/ack.vim'
  endif
  Plugin 'itchyny/calendar.vim'
  Plugin 'Lokaltog/vim-easymotion'
  Plugin 'editorconfig/editorconfig-vim'
  Plugin 'Stormherz/tablify'
  Plugin 'bling/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'kien/ctrlp.vim'
  Plugin 'tacahiroy/ctrlp-funky'
  Plugin 'kris89/vim-multiple-cursors'
  Plugin 'mbbill/undotree'
  Plugin 'Konfekt/FastFold'
  "Plugin 'mhinz/vim-startify'
  Plugin 'tpope/vim-abolish'
  Plugin 'tpope/vim-commentary'
  Plugin 'tpope/vim-repeat'
  Plugin 'tpope/vim-surround'
  Plugin 'tpope/vim-fugitive'
  Plugin 'troydm/easybuffer.vim'
  Plugin 'yonchu/accelerated-smooth-scroll'
  Plugin 'pelodelfuego/vim-swoop'
  Plugin 'chrisbra/vim-diff-enhanced'
endif
" DEVELOPER
if count(g:bundle_groups, 'devel')
  Plugin 'Shougo/neocomplete'
  Plugin 'Shougo/neosnippet'
  Plugin 'Shougo/neosnippet-snippets'
  Plugin 'osyo-manga/vim-over'
  Plugin 'honza/vim-snippets'
  Plugin 'mattn/emmet-vim'
  Plugin 'Chiel92/vim-autoformat'
  Plugin 'jiangmiao/auto-pairs'
  Plugin 'scrooloose/nerdtree'
  Plugin 'Yggdroot/indentLine'
  Plugin 'godlygeek/tabular'
  Plugin 'luochen1990/rainbow'
  Plugin 'mhinz/vim-signify'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'scrooloose/syntastic'
endif
" LANGUAGES
if count(g:bundle_groups, 'languages')
  Plugin 'ap/vim-css-color'
  Plugin 'sheerun/vim-polyglot'
  Plugin 'othree/html5.vim'
  Plugin 'othree/javascript-libraries-syntax.vim'
  Plugin 'othree/yajs.vim'
  Plugin 'slava/vim-spacebars'
  Plugin 'leafgarland/typescript-vim'
endif
" COLORSCHEME
if count(g:bundle_groups, 'colorscheme')
  Plugin 'morhetz/gruvbox'
  Plugin 'sjl/badwolf'
endif

" automatically load filetype plugins
filetype plugin indent on

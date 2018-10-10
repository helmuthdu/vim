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
  Plugin 'ctrlpvim/ctrlp.vim'
  Plugin 'terryma/vim-multiple-cursors'
  Plugin 'mbbill/undotree'
  Plugin 'Konfekt/FastFold'
  Plugin 'mhinz/vim-startify'
  Plugin 'troydm/easybuffer.vim'
  "Plugin 'yonchu/accelerated-smooth-scroll'
  Plugin 'chrisbra/vim-diff-enhanced'
endif
" DEVELOPER
if count(g:bundle_groups, 'devel')
  if has('nvim')
    Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
    Plugin 'Shougo/deoplete.nvim'
    Plugin 'roxma/nvim-yarp'
    Plugin 'roxma/vim-hug-neovim-rpc'
  endif
  Plugin 'Shougo/neosnippet'
  Plugin 'Shougo/neosnippet-snippets'
  Plugin 'osyo-manga/vim-over'
  Plugin 'mattn/emmet-vim'
  Plugin 'Chiel92/vim-autoformat'
  Plugin 'jiangmiao/auto-pairs'
  Plugin 'scrooloose/nerdtree'
  Plugin 'ryanoasis/vim-devicons'
  Plugin 'Yggdroot/indentLine'
  Plugin 'godlygeek/tabular'
  Plugin 'luochen1990/rainbow'
  Plugin 'mhinz/vim-signify'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'vim-syntastic/syntastic'
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

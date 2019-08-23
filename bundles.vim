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
  Plug 'Lokaltog/vim-easymotion'
  Plug 'Stormherz/tablify'
  Plug 'bling/vim-airline'
  Plug 'chrisbra/vim-diff-enhanced'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'itchyny/calendar.vim'
  Plug 'itchyny/vim-cursorword'
  Plug 'mbbill/undotree'
  Plug 'mhinz/vim-startify'
  Plug 'tacahiroy/ctrlp-funky'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'tpope/vim-abolish'
  Plug 'tpope/vim-eunuch'
  Plug 'tpope/vim-fugitive'
  Plug 'troydm/easybuffer.vim'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'yuttie/comfortable-motion.vim'
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
  "Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
  Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
  Plug 'Shougo/neosnippet'
  Plug 'Shougo/neosnippet-snippets'
  Plug 'osyo-manga/vim-over'
  Plug 'mattn/emmet-vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'scrooloose/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
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
  Plug 'HerringtonDarkholme/yats.vim'
  "Plug 'leafgarland/typescript-vim'
endif
" COLORSCHEME
if count(g:bundle_groups, 'colorscheme')
  Plug 'helmuthdu/tender.vim'
  Plug 'morhetz/gruvbox'
  Plug 'sjl/badwolf'
endif
call plug#end()

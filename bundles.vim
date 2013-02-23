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
  let g:bundle_groups=['general', 'programming', 'php', 'javascript', 'html', 'markdown', 'colorscheme']
endif
" Bundles here:
" GENERAL
if count(g:bundle_groups, 'general')
  "Bundle 'gregsexton/VimCalc'
  "Bundle 'hotoo/calendar-vim'
  Bundle 'Lokaltog/powerline'
  Bundle 'Lokaltog/vim-easymotion'
  Bundle 'scrooloose/nerdtree'
  Bundle 'jistr/vim-nerdtree-tabs'
  Bundle 'kien/ctrlp.vim'
  Bundle 'matchit.zip'
  Bundle 'mbbill/undotree'
  Bundle 'spolu/dwm.vim'
  Bundle 'Stormherz/tablify'
  if executable('ack')
    Bundle 'mileszs/ack.vim'
  endif
endif
" PROGRAMMING
if count(g:bundle_groups, 'programming')
  Bundle 'Shougo/neocomplcache'
  Bundle 'Shougo/neosnippet'
  Bundle 'Yggdroot/indentLine'
  Bundle 'godlygeek/tabular'
  Bundle 'honza/snipmate-snippets'
  Bundle 'jiangmiao/auto-pairs'
  Bundle 'kien/rainbow_parentheses.vim'
  Bundle 'scrooloose/nerdcommenter'
  Bundle 'scrooloose/syntastic'
  Bundle 'tpope/vim-fugitive'
  Bundle 'tpope/vim-surround'
  Bundle 'xolox/vim-easytags'
  if executable('ctags')
    Bundle 'majutsushi/tagbar'
  endif
endif
" PHP
if count(g:bundle_groups, 'php')
  Bundle 'paulyg/Vim-PHP-Stuff'
endif
" JAVASCRIPT
if count(g:bundle_groups, 'javascript')
  Bundle 'leshill/vim-json'
  Bundle 'kchmck/vim-coffee-script'
  Bundle 'othree/javascript-libraries-syntax.vim'
endif
" HTML
if count(g:bundle_groups, 'html')
  Bundle 'Arkham/vim-web-indent'
  Bundle 'mattn/zencoding-vim'
endif
" MARKDOWN
if count(g:bundle_groups, 'markdown')
  Bundle 'mkitt/markdown-preview.vim'
  Bundle 'tpope/vim-markdown'
endif
" COLORSCHEME
if count(g:bundle_groups, 'colorscheme')
  Bundle 'altercation/vim-colors-solarized'
  Bundle 'morhetz/gruvbox'
  Bundle 'nielsmadan/harlequin'
  Bundle 'sjl/badwolf'
  Bundle 'zeis/vim-kolor'
endif
if iCanHazVundle == 0
  echo "Installing Bundles, please ignore key map error messages"
  echo ""
  :BundleInstall
endif

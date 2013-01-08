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
  Bundle 'buftabs'
  "Bundle 'gregsexton/VimCalc'
  "Bundle 'hotoo/calendar-vim'
  Bundle 'jeetsukumaran/vim-buffergator'
  Bundle 'kien/ctrlp.vim'
  Bundle 'Lokaltog/vim-easymotion'
  Bundle 'Lokaltog/vim-powerline'
  Bundle 'scrooloose/nerdtree'
  Bundle 'jistr/vim-nerdtree-tabs'
  "Bundle 'YankRing.vim'
  Bundle 'mbbill/undotree'
  Bundle 'godlygeek/csapprox'
  Bundle 'matchit.zip'
  Bundle 'spolu/dwm.vim'
  if executable('ack')
    Bundle 'mileszs/ack.vim'
  endif
endif
" PROGRAMMING
if count(g:bundle_groups, 'programming')
  " Snipmate {
  "Bundle 'garbas/vim-snipmate'
  "Bundle 'tomtom/tlib_vim'
  "Bundle 'MarcWeber/vim-addon-mw-utils'
  Bundle 'honza/snipmate-snippets'
  "}
  Bundle 'godlygeek/tabular'
  Bundle 'jiangmiao/auto-pairs'
  Bundle 'scrooloose/nerdcommenter'
  Bundle 'scrooloose/syntastic'
  Bundle 'Shougo/neocomplcache'
  Bundle 'Shougo/neosnippet'
  Bundle 'tpope/vim-fugitive'
  Bundle 'tpope/vim-surround'
  Bundle 'xolox/vim-easytags'
  "Bundle 'nathanaelkane/vim-indent-guides'
  Bundle 'Yggdroot/indentLine'
  Bundle 'kien/rainbow_parentheses.vim'
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
  Bundle 'groenewege/vim-less'
  Bundle 'taxilian/vim-web-indent'
  Bundle 'einars/js-beautify'
endif
" HTML
if count(g:bundle_groups, 'html')
  Bundle 'ChrisYip/Better-CSS-Syntax-for-Vim'
endif
" MARKDOWN
if count(g:bundle_groups, 'markdown')
  Bundle 'mkitt/markdown-preview.vim'
  Bundle 'tpope/vim-markdown'
endif
" COLORSCHEME
if count(g:bundle_groups, 'colorscheme')
  Bundle 'altercation/vim-colors-solarized'
  Bundle 'sjl/badwolf'
  Bundle 'morhetz/gruvbox'
  Bundle 'nielsmadan/harlequin'
endif
if iCanHazVundle == 0
  echo "Installing Bundles, please ignore key map error messages"
  echo ""
  :BundleInstall
endif

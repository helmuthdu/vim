" SETTINGS
" General
set nocompatible                   " explicitly get out of vi-compatible mode
set title                          " change the terminal's title
set history=1000                   " keep 100 lines of command line history
set backspace=2                    " make backspace work normal
set nostartofline                  " don't jump to first character when paging
set report=0                       " tell us when anything is changed via :...0
set hid                            " you can change buffers without saving
set autowrite                      " Auto save before commands like next and make
set autoread                       " Set to auto read when a file is changed from the outside
set fileformats=unix,mac,dos       " support all three, in this order
set printoptions=paper:a4,syntax:n " controls the default paper size and the printing of syntax highlighting (:n -> none)
set diffopt=filler                 " Add vertical spaces to keep right and left aligned
set diffopt+=iwhite                " Ignore whitespace changes (focus on code changes)
set esckeys                        " Allow cursor keys in insert mode.
set ttyfast                        " smoother changes
set gdefault                       " regex /g by default
set switchbuf=useopen              " reveal already opened files from the quickfix window instead of opening new buffers
set viminfo='20,\"80               " read/write a .viminfo file, don't store more
" vertical/horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1
" Suffixes that get lower priority when doing tab completion for filenames
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.pdf,.exe
" No bell or flash wanted
set novisualbell " No blinking
set noerrorbells " No noise.
set vb t_vb=     " disable any beeps or flashes on error
if g:OS#unix
  set clipboard=unnamedplus        " on Linux use + register for copy-paste
else
  set clipboard=unnamed            " one mac and windows, use * register for copy-paste
endif

" Enable mouse
if has("mouse")
  set mouse=a
  set mousemodel=popup
  set mousehide
endif

" Multiplatform compatibility
if g:OS#win
  " Make windows use ~/.vim too, I don't want to use _vimfiles
  set runtimepath^=~/.vim
endif

" Plugins Manager
execute pathogen#infect()
filetype plugin indent on    " automatically load filetypeplugins

" Editor Settings
set lazyredraw           " do not redraw while running macros (much faster) (Lazy Redraw)
set equalalways          " Close a split window in Vim without resizing other windows
set guitablabel=%t
set number               " turn on line numbers
set linespace=0          " space it out a little more (easier to read)
set cmdheight=1          " the command bar is 1 high
set laststatus=2         " always show statusline
set guicursor=a:blinkon0 " cursor-blinking off!!
set showmode             " If in Insert, Replace or Visual mode put a message on the last line.
set encoding=utf-8
set fileencodings=utf-8

" wildmode
set wildmenu           " nice tab-completion on the command line
set wildchar=9         " tab as completion character
set wildmode=longest:full,list:full
set wildignore+=*.o,*.a,*.so,*.obj,*.exe,*.lib,*.app,*/.git/*,*/.hg/*,*/.svn/*

" chars to show for list
set listchars=precedes:«,extends:»,trail:⠿,eol:·,tab:→\

" Appearance Settings
" switch syntax highlighting on, when the terminal has colors
if &t_Co > 2 || g:OS#gui
  syntax on
endif
" default colorscheme
set background=dark
if g:OS#gui
  set t_Co=256
  "colorscheme badwolf
  "colorscheme kolor
  colorscheme gruvbox
elseif &t_Co >= 256
  set t_Co=256
  colorscheme badwolf
else
  set t_Co=8
  set t_Sf=^[[3%p1%dm
  set t_Sb=^[[4%p1%dm
endif

" GUI options
if g:OS#gui
  set guioptions=ac
  " Linux
  if g:OS#unix
    set guioptions-=m
    nmap <F8> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
    set gfn=Menlo\ for\ Powerline\ 10
  endif
  " Mac
  if g:OS#mac
    set guifont=Menlo\ for\ Powerline:h12
  endif
  set lines=50 columns=80
endif

" Language Settings
highlight SpellBad term=underline gui=undercurl guisp=Orange
" Highlight problematic whitespace (spaces before tabs)
hi RedundantSpaces ctermfg=214 ctermbg=160 cterm=bold
match RedundantSpaces / \+\ze\t/

" Files, backups and undo
" Turn backup off, since most stuff are in git anyway...
set nobackup
set nowb
set noswapfile
" enable persistent undo
if has('persistent_undo')
  set undodir=$HOME/.vim/.undofile
  set undofile
  set undolevels=100   "maximum number of changes that can be undone
  set undoreload=10000 "maximum number lines to save for undo on a buffer reload
  if ! isdirectory(&undodir)
    call mkdir(&undodir, 'p')
  endif
endif

" Text, tab and indent related
set shiftwidth=2  " Number of spaces to use in each autoindent step
set tabstop=2     " Two tab spaces
set softtabstop=2 " Number of spaces to skip or insert when <BS>ing or <Tab>ing
set expandtab     " Spaces instead of tabs for better cross-editor compatibility
set autoindent    " Keep the indent when creating a new line
set copyindent    " Copy the previous indentation on autoindent
set smarttab      " Use shiftwidth and softtabstop to insert or delete (on <BS>) blanks

" Wrap
set nowrap                   " word wrap
set wrapscan                 " Searches wrap around end of file
set display=lastline         " don't display @ with long paragraphs
set lbr                      " line break
let &sbr = nr2char(8618).' ' " Show ↪ at the beginning of wrapped lines
set textwidth=0
set formatoptions=croql      " t=text, c=comments, q=format with gq command, o,r=autoinsert comment leader

" Search config
set ignorecase      " select case-insenitiv search
set smartcase       " No ignorecase if Uppercase chars in search
set magic           " change the way backslashes are used in search patterns
set showmatch       " jump to matches during entering the pattern
set matchtime=2     " How many tenths of a second to blink
set matchpairs+=<:> " these tokens belong together
set hlsearch        " highlight all matches...
set incsearch       " ...and also during entering the pattern
nohlsearch          " avoid highlighting when reloading vimrc

" Folding
set foldenable          " enable folding
set foldcolumn=2          " add a fold column
set foldmethod=marker     " detect triple-{ style fold markers
set foldlevel=1           " start out with everything folded
set foldnestmax=10        "deepest fold is 10 levels
set foldtext=MyFoldText() " Which command trigger auto-unfold
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo

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
set virtualedit=onemore            " Allow for cursor beyond last character
set autochdir                      " Change directory to the current buffer when opening files.
" set shortmess+=filmnrxoOtT         " Abbrev. of messages (avoids 'hit enter')
set cursorline
set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility
" vertical/horizontal scroll off settings
if !&scrolloff
  set scrolloff=1
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
" Suffixes that get lower priority when doing tab completion for filenames
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.pdf,.exe
" No bell or flash wanted
set novisualbell " No blinking
set noerrorbells " No noise.
set vb t_vb=     " disable any beeps or flashes on error
if has('clipboard')
  if LINUX() " On Linux use + register for copy-paste
    set clipboard=unnamedplus
  else " On mac and Windows, use * register for copy-paste
    set clipboard=unnamed
  endif
endif

" Enable mouse
if has("mouse")
  set mouse-=a
  set mousemodel=popup
  set mousehide
endif

" Multiplatform compatibility
if WINDOWS()
  " On Windows, also use '.vim' instead of 'vimfiles'; this makes synchronization
  " across (heterogeneous) systems easier.
  set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
endif

" Plugins Manager
execute pathogen#infect()
if has('autocmd')
  filetype plugin indent on    " automatically load filetype plugins
endif

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

" wildmode
set wildmenu           " nice tab-completion on the command line
set wildchar=9         " tab as completion character
set wildmode=longest:full,list:full
set wildignore+=*.o,*.a,*.so,*.obj,*.exe,*.lib,*.app,*/.git/*,*/.hg/*,*/.svn/*

" chars to show for list
set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

" Appearance Settings
" switch syntax highlighting on, when the terminal has colors
if &t_Co > 2 || GUI()
  syntax enable
endif
" default colorscheme
set background=dark
if GUI()
  set t_Co=256
  " colorscheme badwolf
  colorscheme gruvbox
elseif &t_Co >= 256
  set t_Co=256
  " colorscheme badwolf
  colorscheme gruvbox
else
  set t_Co=8
  set t_Sf=^[[3%p1%dm
  set t_Sb=^[[4%p1%dm
endif

" GUI options
if GUI()
  set guioptions=ac
  " Linux
  if WINDOWS()
    set gfn=DejaVu_Sans_Mono_for_Powerline:h10
  elseif OSX()
    set gfn=Menlo:h13
  else
    set gfn=Liberation\ Mono\ 11
  endif
  set guioptions-=m
  nmap <F8> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
  set lines=50 columns=80
endif

" Language Settings
" Highlight problematic whitespace (spaces before tabs)
highlight SpellBad term=underline gui=undercurl guisp=Orange
" highlight clear SignColumn " SignColumn should match background
" highlight clear LineNr " Current line number row will have same background color in relative mode

" Files, backups and undo
" Turn backup off, since most stuff are in git anyway...
set nobackup
set nowb
set noswapfile
" enable persistent undo
if has('persistent_undo')
  set undodir=$HOME/.vim/.undofile
  set undofile
  set undolevels=1000  "maximum number of changes that can be undone
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
set textwidth=0
set formatoptions=tcroql     " t=text, c=comments, q=format with gq command, o,r=autoinsert comment leader
set nojoinspaces             " Prevents inserting two spaces after punctuation on a join (J)
set splitright               " Puts new vsplit windows to the right of the current
set splitbelow               " Puts new split windows to the bottom of the current
let &sbr = nr2char(8618).' ' " Show ↪ at the beginning of wrapped lines

" Search
set ignorecase      " select case-insenitiv search
set smartcase       " No ignorecase if Uppercase chars in search
set magic           " change the way backslashes are used in search patterns
set showmatch       " jump to matches during entering the pattern
set matchtime=2     " How many tenths of a second to blink
set matchpairs+=<:> " these tokens belong together
set hlsearch      " highlight all matches...
set incsearch       " ...and also during entering the pattern
nohlsearch          " avoid highlighting when reloading vimrc

" Folding
set foldenable            " enable folding
set foldmethod=marker     " detect triple-{ style fold markers
set foldlevel=1           " start out with everything folded
set foldtext=MyFoldText() " Which command trigger auto-unfold
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo

" Session
set sessionoptions=buffers,curdir,folds,tabpages,winsize
let s:sessiondir  = expand("~/.vim/sessions", 1)
let s:sessionfile = expand(s:sessiondir . "/session.vim", 1)
let s:sessionlock = expand(s:sessiondir . "/session.lock", 1)

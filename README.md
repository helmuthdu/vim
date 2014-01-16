# Installation

## Prerequisites

- Git (1.7+)
- Vim (7.3+)
- ctags

### Mac:

- [Homebrew][homebrew] - `ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"`
- [MacVim][macvim] - `brew install macvim`
- [Homesick][homesick] - `gem install homesick`
- [ctags][ctags] - `brew install ctags-exuberant`

# Vim

Overview of my vim setup. Sensible defaults!

## Mappings

Reference to vim mappings.

### General

- ` ,           ` keyleader.
- ` <Leader>cl  ` Calculate the value in one line.
- ` <Leader>cd  ` Switch to the directory of the open buffer.
- ` <Leader>cfg ` Fast editing of .vimrc.
- ` <Leader>L   ` Enable/Disable list.
- ` <Leader>/   ` Comment/Uncoment Code.
- ` <Leader>d   ` Enable/Disable dual mode view.
- ` <Leader>al  ` Quick aligning to left.
- ` <Leader>ar  ` Quick aligning to right.
- ` <Leader>ac  ` Quick aligning to center.
- ` <Leader>ff  ` Toggle indention mode.
- ` <Leader>ss  ` Toggle Spell checking
- ` <Leader>sn  ` Spell checking (Next word)
- ` <Leader>sp  ` Spell checking (Previews word)
- ` <Leader>s?  ` Spell checking (Show list)
- ` <Leader>tw  ` Set text wrapping toggles.
- ` <Enter>     ` Turn off search highlighting.
- ` <spacebar>  ` spacebar create/open/close folding.
- ` <C-TAB>     ` Move to next buffer
- ` <S-C-TAB>   ` Move to previews buffer
- ` <TAB>       ` Indent a line
- ` <S-TAB>     ` Back-Indent a line
- ` <S-TAB>     ` Back-Indent a line
- ` +/-         ` Easy increment/decrement.
- ` jj          ` Map escape key to jj.

### Plugins

- ` <Leader>B  ` buffergator
- ` <Leader>ca ` calendar
- ` <Leader>m  ` CtrlPMRU
- ` <Leader>b  ` CtrlPBuffer
- ` <Leader>u  ` Gundo
- ` <Leader>nt ` NERDTree
- ` <Leader>T  ` Tagbar
- ` <C-e>      ` Emmet
- ` <C-Space>  ` YouCompleteMe: Display preview window
- ` <Tab>      ` Ultisnips: Expand snippers
- ` <C-Tab>    ` Ultisnips: Display list of snippers

## Commands

- `:w!` Sudo write!

## Plug-Ins

- [accelerated-smooth-scroll](https://github.com/yonchu/accelerated-smooth-scroll)
- [airline](https://github.com/bling/vim-airline)
- [bufferline](https://github.com/bling/vim-bufferline)
- [calendar]
- [CtrlP](https://github.com/kien/ctrlp.vim)
- [CtrlP-funky](https://github.com/tacahiroy/ctrlp-funky)
- [delimitMate](https://github.com/Raimondi/delimitMate) - Automatic closing of quotes, parenthesis, brackets, etc. \-\-
- [easyMotion](https://github.com/Lokaltog/vim-easymotion)
- [IndentLine](https://github.com/Yggdroot/indentLine)
- [Interactive-replace](https://github.com/hwrod/interactive-replace)
- [multiple-cursors](https://github.com/terryma/vim-multiple-cursors)
- [nerdcommenter](https://github.com/scrooloose/nerdcommenter/blob/master/doc/NERD_commenter.txt)
- [nerdtree](https://github.com/scrooloose/nerdtree/blob/master/doc/NERD_tree.txt)
- [syntastic](https://github.com/scrooloose/syntastic/blob/master/doc/syntastic.txt)
- [tabular](https://github.com/godlygeek/tabular/blob/master/doc/Tabular.txt) - Configurable, flexible, intuitive text aligning \-\-
- [tagbar]
- [markdown](https://github.com/tpope/vim-markdown)
- [surround](https://github.com/tpope/vim-surround/blob/master/doc/surround.txt) - Delete, change, and add "surroundings" i.e. parentheses, quotes, and HTML tags \-\-
- [Ultisnips](https://github.com/SirVer/ultisnips)
- [undotree](https://github.com/mbbill/undotree) - Graph Vim's undo tree so it is actually usable
- [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
- [vimCalc]
- [vundle]

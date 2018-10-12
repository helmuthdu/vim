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

- `,` keyleader.
- `<Leader>cd` Switch to the directory of the open buffer.
- `<Leader>al` Quick aligning to left.
- `<Leader>ar` Quick aligning to right.
- `<Leader>ac` Quick aligning to center.
- `<Leader>sn` Spell checking (Next word)
- `<Leader>sp` Spell checking (Previews word)
- `<Leader>s?` Spell checking (Show list)
- `<Leader>tw` Set text wrapping toggles.
- `<spacebar>` spacebar create/open/close folding.
- `jj` Map escape key to jj.

### Plugins

- `<Leader>B` buffergator
- `<Leader>ca` calendar
- `<Leader>u` Gundo
- `<C-o>` NERDTree
- `<C-e>` Emmet

## Commands

- `:w!` Sudo write!

## Plug-Ins

- [airline](https://github.com/bling/vim-airline)
- [calendar]
- [CtrlP](https://github.com/kien/ctrlp.vim)
- [easyMotion](https://github.com/Lokaltog/vim-easymotion)
- [IndentLine](https://github.com/Yggdroot/indentLine)
- [multiple-cursors](https://github.com/terryma/vim-multiple-cursors)
- [nerdcommenter](https://github.com/scrooloose/nerdcommenter/blob/master/doc/NERD_commenter.txt)
- [nerdtree](https://github.com/scrooloose/nerdtree/blob/master/doc/NERD_tree.txt)
- [syntastic](https://github.com/scrooloose/syntastic/blob/master/doc/syntastic.txt)
- [undotree](https://github.com/mbbill/undotree) - Graph Vim's undo tree so it is actually usable

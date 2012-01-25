# Installation

## Prerequisites

- Git (1.7+)
- Vim (7.3+)
- ctags
- discount

Optional, but recommended (OS X only):

- [Homebrew][homebrew] - `ruby -e "$(curl -fsSL https://gist.github.com/raw/323731/install_homebrew.rb)"`
- [MacVim][macvim] - `brew install macvim`
- [Homesick][homesick] - `gem install homesick`
- [discount][discount] - `brew install discount`
- [ctags][ctags] - `brew install ctags`

# Vim

Overview of my vim setup. Sensible defaults!

## Mappings

Reference to vim mappings.

### General

- `,` keyleader.
- `<Leader>cl` Calculate the value in one line.
- `<Leader>cfg` Fast editing of .vimrc.
- `<Leader>L` Enable/Disable list.
- `<Leader>/` Turn off search highlighting.
- `<Leader><Leader>w` Vertically split window and select it.
- `<Leader>al` Quick aligning to left
- `<Leader>ar` Quick aligning to right
- `<Leader>ac` Quick aligning to center
- `<Leader>ss` Toggle Spell checking
- `<Leader>sn` Spell checking (Next word)
- `<Leader>sp` Spell checking (Previews word)
- `<Leader>s?` Spell checking (Show list)
- `<spacebar>` spacebar create/open/close folding.
- `Ctrl-h` Search+Replace word under cursor.
- `jj` Map escape key to jj.
- `Y` Yank from cursor to end of line (same as `y$`).

### Plugins

- `<Leader>be` buffexplorer
- `<F9>` buffexplorer
- `<Leader>ca` calendar
- `<Leader>ff` FuzzyFinder
- `<Leader>u` Gundo
- `<Leader>p` Markdown-Preview
- `<Leader>nt` NERDTree
- `<Leader>T` Tagbar
- `<Leader>s` Scratch

## Commands

- `:W` Sudo write!

## Plug-Ins

- [autoPairs](https://github.com/jiangmiao/auto-pairs) - Automatic closing of quotes, parenthesis, brackets, etc. \-\-
- [buftabs]
- [calendar]
- [CtrolP]
- [drawIt]
- [easyGrep]
- [easyMotion]
- [gundo](https://github.com/vim-scripts/Gundo/blob/master/doc/gundo.txt) - Graph Vim's undo tree so it is actually usable
- [markdown-preview.vim](https://github.com/mkitt/markdown-preview.vim/blob/master/doc/markdown-preview.txt)
- [matchit]
- [nerdcommenter](https://github.com/scrooloose/nerdcommenter/blob/master/doc/NERD_commenter.txt)
- [nerdtree](https://github.com/scrooloose/nerdtree/blob/master/doc/NERD_tree.txt)
- [syntastic](https://github.com/scrooloose/syntastic/blob/master/doc/syntastic.txt)
- [tabular](https://github.com/godlygeek/tabular/blob/master/doc/Tabular.txt) - Configurable, flexible, intuitive text aligning \-\-
- [tagbar]
- [vim-markdown](https://github.com/tpope/vim-markdown)
- [vim-powerline]
- [vim-surround](https://github.com/tpope/vim-surround/blob/master/doc/surround.txt) - Delete, change, and add "surroundings" i.e. parentheses, quotes, and HTML tags \-\-
- [vimCalc]
- [vundle]
- [yankring](https://github.com/chrismetcalf/vim-yankring/blob/master/doc/yankring.txt)

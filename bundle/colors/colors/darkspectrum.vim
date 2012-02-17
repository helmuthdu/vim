" Vim color file
"
" Author: Brian Mock <mock.brian@gmail.com>
"
" Note: Based on Oblivion color scheme for gedit (gtk-source-view)
"
" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

hi clear

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
	syntax reset
    endif
endif
let g:colors_name="darkspectrum"

hi Normal guifg=#efefef ctermfg=7 guibg=#2A2A2A ctermbg=235

" highlight groups
hi Cursor		guibg=#ffffff ctermbg=15 guifg=#000000 ctermfg=0
hi CursorLine	guibg=#000000 ctermbg=0
"hi CursorLine	guibg=#3e4446 ctermbg=238
hi CursorColumn	guibg=#464646 ctermbg=238

"hi DiffText     guibg=#4e9a06 ctermbg=64 guifg=#FFFFFF ctermfg=15 gui=bold
"hi DiffChange   guibg=#4e9a06 ctermbg=64 guifg=#FFFFFF ctermfg=15 gui=bold
"hi DiffAdd      guibg=#204a87 ctermbg=24 guifg=#FFFFFF ctermfg=15 gui=bold
"hi DiffDelete   guibg=#5c3566 ctermbg=239 guifg=#FFFFFF ctermfg=15 gui=bold

hi DiffAdd         guifg=#ffcc7f ctermfg=222 guibg=#a67429 ctermbg=136 gui=none
hi DiffChange      guifg=#7fbdff ctermfg=111 guibg=#425c78 ctermbg=60 gui=none
hi DiffText        guifg=#8ae234 ctermfg=112 guibg=#4e9a06 ctermbg=64 gui=none
"hi DiffDelete      guifg=#252723 ctermfg=235 guibg=#000000 ctermbg=0 gui=none
hi DiffDelete      guifg=#000000 ctermfg=0 guibg=#000000 ctermbg=0 gui=none
"hi ErrorMsg

hi Number		guifg=#fce94f ctermfg=221

hi Folded		guibg=#000000 ctermbg=0 guifg=#FFFFFF ctermfg=15 gui=bold cterm=bold
hi vimFold		guibg=#000000 ctermbg=0 guifg=#FFFFFF ctermfg=15 gui=bold cterm=bold
hi FoldColumn	guibg=#000000 ctermbg=0 guifg=#FFFFFF ctermfg=15 gui=bold cterm=bold

hi LineNr		guifg=#535353 ctermfg=239 guibg=#202020 ctermbg=234
hi NonText		guifg=#535353 ctermfg=239 guibg=#202020 ctermbg=234
hi Folded		guifg=#535353 ctermfg=239 guibg=#202020 ctermbg=234 gui=bold cterm=bold
hi FoldeColumn  guifg=#535353 ctermfg=239 guibg=#202020 ctermbg=234 gui=bold cterm=bold
"hi VertSplit	guibg=#ffffff ctermbg=15 guifg=#ffffff ctermfg=15 gui=none

hi VertSplit	guibg=#3C3C3C ctermbg=237 guifg=#3C3C3C ctermfg=237 gui=none
hi StatusLine   guifg=#FFFFFF ctermfg=15 guibg=#3C3C3C ctermbg=237 gui=none
hi StatusLineNC guifg=#808080 ctermfg=244 guibg=#3C3C3C ctermbg=237 gui=none

hi ModeMsg		guifg=#fce94f ctermfg=221
hi MoreMsg		guifg=#fce94f ctermfg=221
hi Visual		guifg=#FFFFFF ctermfg=15 guibg=#3465a4 ctermbg=61 gui=none
hi VisualNOS    guifg=#FFFFFF ctermfg=15 guibg=#204a87 ctermbg=24 gui=none
hi IncSearch	guibg=#FFFFFF ctermbg=15 guifg=#ef5939 ctermfg=203
hi Search		guibg=#ad7fa8 ctermbg=139 guifg=#FFFFFF ctermfg=15
hi SpecialKey	guifg=#8ae234 ctermfg=112

hi Title		guifg=#ef5939 ctermfg=203
hi WarningMsg	guifg=#ef5939 ctermfg=203
hi Number		guifg=#fcaf3e ctermfg=215

hi MatchParen	guibg=#ad7fa8 ctermbg=139 guifg=#FFFFFF ctermfg=15
hi Comment		guifg=#8a8a8a ctermfg=245
hi Constant		guifg=#ef5939 ctermfg=203 gui=none
hi String		guifg=#fce94f ctermfg=221
hi Identifier	guifg=#729fcf ctermfg=74
hi Statement	guifg=#ffffff ctermfg=15 gui=bold cterm=bold
hi PreProc		guifg=#ffffff ctermfg=15 gui=bold cterm=bold
hi Type			guifg=#8ae234 ctermfg=112 gui=bold cterm=bold
hi Special		guifg=#e9b96e ctermfg=179
hi Underlined	guifg=#ad7fa8 ctermfg=139 gui=underline
hi Directory	guifg=#729fcf ctermfg=74
hi Ignore		guifg=#555753 ctermfg=240
hi Todo			guifg=#FFFFFF ctermfg=15 guibg=#ef5939 ctermbg=203 gui=bold cterm=bold
hi Function		guifg=#ad7fa8 ctermfg=139

"hi WildMenu     guibg=#2e3436 ctermbg=236 guifg=#ffffff ctermfg=15 gui=bold
"hi WildMenu     guifg=#7fbdff ctermfg=111 guibg=#425c78 ctermbg=60 gui=none
hi WildMenu     guifg=#ffffff ctermfg=15 guibg=#3465a4 ctermbg=61 gui=none

hi Pmenu        guibg=#000000 ctermbg=0 guifg=#c0c0c0 ctermfg=250
hi PmenuSel     guibg=#3465a4 ctermbg=61 guifg=#ffffff ctermfg=15
hi PmenuSbar    guibg=#444444 ctermbg=238 guifg=#444444 ctermfg=238
hi PmenuThumb   guibg=#888888 ctermbg=102 guifg=#888888 ctermfg=102 

hi cppSTLType   guifg=#729fcf ctermfg=74 gui=bold cterm=bold

hi spellBad     guisp=#fcaf3e
hi spellCap     guisp=#73d216
hi spellRare    guisp=#ad7fa8
hi spellLocal   guisp=#729fcf

hi link cppSTL          Function
hi link Error			Todo
hi link Character		Number
hi link rubySymbol		Number
hi link htmlTag			htmlEndTag
"hi link htmlTagName     htmlTag
hi link htmlLink		Underlined
hi link pythonFunction	Identifier
hi link Question		Type
hi link CursorIM		Cursor
hi link VisualNOS		Visual
hi link xmlTag			Identifier
hi link xmlTagName		Identifier
hi link shDeref			Identifier
hi link shVariable		Function
hi link rubySharpBang	Special
hi link perlSharpBang	Special
hi link schemeFunc      Statement
"hi link shSpecialVariables Constant
"hi link bashSpecialVariables Constant

" tabs (non gui)
hi TabLine		guifg=#A3A3A3 ctermfg=247 guibg=#202020 ctermbg=234 gui=none
hi TabLineFill	guifg=#535353 ctermfg=239 guibg=#202020 ctermbg=234 gui=none
hi TabLineSel	guifg=#FFFFFF ctermfg=15 gui=bold cterm=bold
"hi TabLineSel	guifg=#FFFFFF ctermfg=15 guibg=#000000 ctermbg=0 gui=bold
" vim: sw=4 ts=4

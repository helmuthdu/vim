" Vim color file
" Name:     robokai
" Author:   Brian Mock

" Init
set background=dark
"if has("gui_running")
"    set cursorline
"endif
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "robokai"

" Fix these later
hi Title        ctermbg=lightred

" hi Visual       ctermbg=darkgrey    ctermfg=white
hi Visual       ctermbg=red    ctermfg=yellow cterm=bold
hi WarningMsg   ctermbg=red         ctermfg=white

" Fix these later
hi Folded       ctermbg=darkcyan    ctermfg=lightcyan       cterm=bold
hi FoldColumn   ctermbg=none        ctermfg=white           cterm=none

hi DiffAdd      ctermbg=darkgreen   ctermfg=lightgreen      cterm=bold
hi DiffChange   ctermbg=darkred     ctermfg=lightred        cterm=bold
hi DiffDelete   ctermbg=none        ctermfg=lightgrey       cterm=none
hi DiffText     ctermbg=darkmagenta ctermfg=lightmagenta    cterm=bold

hi Cursor       ctermbg=green
hi CursorIM     ctermbg=red

""""""\ Syntax highing groups \""""""

" Note: This needs to be done twice...
hi Normal           ctermbg=none ctermfg=none cterm=bold
hi Normal           ctermbg=none ctermfg=none cterm=bold

hi pythonFunction   ctermfg=lightcyan cterm=bold

hi Comment      ctermfg=darkgrey
hi Constant     ctermfg=lightmagenta
  hi String     ctermfg=yellow
  hi Character  ctermfg=yellow
  hi Number     ctermfg=lightmagenta
  hi Boolean    ctermfg=lightmagenta
  hi Float      ctermfg=lightmagenta
" hi Identifier   ctermfg=brown
hi Identifier   ctermfg=lightgreen
  hi Function   ctermfg=lightgreen
  " hi Function   ctermfg=lightred
  hi Statement        ctermfg=lightred
  hi Conditional      ctermfg=lightred
  " hi Statement  ctermfg=lightgreen
  " hi Conditional ctermfg=lightgreen
  hi Repeat     ctermfg=lightred
  hi Label      ctermfg=yellow
  hi Operator   ctermfg=lightgreen
  hi hsOperator   ctermfg=lightgreen
  hi Keyword  ctermfg=lightred
  " hi Keyword    ctermfg=lightgreen
  hi Exception  ctermfg=lightgreen
hi PreProc      ctermfg=lightgreen
  hi include    ctermfg=lightgreen
  hi Define     ctermfg=lightcyan
  hi Macro      ctermfg=yellow
  hi PreCondit  ctermfg=lightgreen
hi Type         ctermfg=lightcyan
  hi StorageClass       ctermfg=lightcyan
  hi Structure  ctermfg=lightcyan
  hi Typedef    ctermfg=lightcyan
hi Special      ctermfg=lightcyan
  hi Specialchar        ctermfg=lightred
  hi Tag                ctermfg=lightred
  hi Delimiter  ctermfg=lightgrey
  hi Debug      ctermfg=lightgrey
hi Underlined   ctermfg=lightgrey
hi Ignore       ctermfg=lightgrey
hi Error        ctermfg=yellow ctermbg=red
hi ErrorMsg     ctermfg=yellow ctermbg=red
hi Todo         ctermfg=lightgrey ctermbg=none

" Stupid Java
hi javaCommentTitle ctermfg=grey
hi javaDocParam ctermfg=grey
hi javaDocTag ctermfg=grey
hi javaDocTags ctermfg=grey

" Stupid Perl
hi perlOperator        ctermfg=lightcyan
hi perlStatementList   ctermfg=lightcyan
hi perlStatementScalar ctermfg=lightcyan
hi perlStatementVector ctermfg=lightcyan
hi perlMisc            ctermfg=lightcyan
hi perlStatementIOfunc ctermfg=lightcyan
hi perlStatementHash   ctermfg=lightcyan
hi perlStatementRegexp ctermfg=lightgrey

""""""""\ Highing groups for various occasions \""""""""
hi SpecialKey   ctermfg=grey
hi NonText      ctermfg=darkgrey
hi Directory    ctermfg=lightgreen
hi IncSearch    ctermbg=yellow      ctermfg=black cterm=none
hi Search       ctermbg=yellow      ctermfg=black cterm=none
hi MoreMsg      ctermfg=yellow
hi ModeMsg      ctermfg=yellow
hi Question     ctermbg=lightcyan

hi MatchParen ctermbg=brown ctermfg=black
"""
" hi TabLineSel   cterm=none   ctermfg=white     ctermbg=red
" hi TabLine      cterm=none   ctermfg=black     ctermbg=white
" hi TabLineFill  cterm=none   ctermfg=black     ctermbg=none
" 
" hi VertSplit    cterm=none   ctermbg=none     ctermfg=darkgrey
" hi StatusLine   cterm=none   ctermbg=red       ctermfg=white
" hi StatusLineNC cterm=none   ctermbg=none     ctermfg=black
"
" hi TabLineSel   cterm=none   ctermfg=white     ctermbg=red
" hi TabLine      cterm=none   ctermfg=black     ctermbg=white
" hi TabLineFill  cterm=none   ctermfg=black     ctermbg=none
"""

"hi TabLineSel   ctermfg=black     ctermbg=white   cterm=none,underline
hi TabLineSel   ctermfg=black     ctermbg=white   cterm=none
hi TabLine      ctermfg=gray      ctermbg=none    cterm=bold,underline
hi TabLineFill  ctermfg=black     ctermbg=none    cterm=underline,bold
"hi TabLineSel   ctermfg=white     ctermbg=none    cterm=underline,bold,reverse
""hi TabLine      ctermfg=black     ctermbg=none    cterm=underline,bold
""hi TabLineFill  ctermfg=black     ctermbg=none    cterm=underline,bold
"hi TabLine      ctermfg=white     ctermbg=none    cterm=underline
"hi TabLineFill  ctermfg=white     ctermbg=none    cterm=underline

hi LineNr       ctermfg=black cterm=bold
"hi LineNr       ctermfg=none cterm=none

hi VertSplit    cterm=none        ctermbg=none     ctermfg=darkgrey
hi StatusLine   cterm=underline   ctermbg=none     ctermfg=white
hi StatusLineNC cterm=underline   ctermbg=none     ctermfg=darkgrey

hi WildMenu     ctermbg=none ctermfg=none cterm=reverse,underline

hi spellBad     ctermbg=red ctermfg=yellow
hi spellCap     ctermbg=red ctermfg=yellow
hi spellRare    ctermbg=red ctermfg=yellow
hi spellLocal   ctermbg=red ctermfg=yellow

hi Pmenu        ctermbg=blue    ctermfg=white   cterm=bold
hi PmenuSel     ctermbg=red     ctermfg=white   cterm=bold
hi PmenuSbar    ctermbg=blue    ctermfg=blue   
hi PmenuThumb   ctermbg=white   ctermfg=white

"hi MatchParen   ctermbg=lightgreen cterm=none

" Vim color file
"
"         Name: voland.vim
"      Version: 1.0
"   Maintainer: Vladimir Andreyev <v.m.andreyev@gmail.com>
" Contributors: Vladimir Andreyev <v.m.andreyev@gmail.com>
"
" This is an improvement from fu. Want to change toe colors to your needs?
" Go to this page to see what number is set wo what color:
" http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html
"
" History:
"   2015-09-13 - Initial setup and creation of this file.
"

if &t_Co != 256 && ! has("gui_running")
  echomsg "err: please use GUI or a 256-color terminal (so that t_Co=256 could be set)"
  finish
endif

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif
let colors_name = "voland"


" General colors
hi Normal         ctermfg=252   ctermbg=234                  guifg=#d0d0d0  guibg=#1c1c1c
hi CursorColumn                 ctermbg=238                                 guibg=#444444
hi Cursor                       ctermbg=100                                 guibg=#ffaf00
hi CursorLine                   ctermbg=238                                 guibg=#444444
hi FoldColumn     ctermfg=248   ctermbg=bg                   guifg=#a8a8a8  guibg=#000000
hi Folded         ctermfg=255   ctermbg=60                   guifg=#eeeeee  guibg=#5f5f87
hi IncSearch      ctermfg=0     ctermbg=223                  guifg=#000000  guibg=#ffd7af
hi NonText        ctermfg=248   ctermbg=233   cterm=bold     guifg=#a8a8a8  guibg=#121212
hi Search         ctermfg=0     ctermbg=149                  guifg=#000000  guibg=#afd75f
hi SignColumn     ctermfg=248   ctermbg=232                             guifg=#a8a8a8
hi SpecialKey     ctermfg=77                                 guifg=#5fd75f
hi StatusLine     ctermfg=232   ctermbg=255                  guifg=#080808  guibg=#eeeeee
hi StatusLineNC   ctermfg=237   ctermbg=253                  guifg=#3a3a3a  guibg=#dadada
hi TabLine        ctermfg=253   ctermbg=237                  guifg=#dadada  guibg=#3a3a3a
hi TabLineFill    ctermfg=0     ctermbg=0                    guifg=#000000  guibg=#000000
hi TabLineSel     ctermfg=255   ctermbg=33                   guifg=#eeeeee  guibg=#0087ff
hi VertSplit      ctermfg=237   ctermbg=237                  guifg=#3a3a3a  guibg=#3a3a3a
hi Visual         ctermfg=24    ctermbg=153                  guifg=#005f87  guibg=#afd7ff
hi VIsualNOS      ctermfg=24    ctermbg=153                  guifg=#005f87  guibg=#afd7ff
hi LineNr         ctermfg=236   ctermbg=232                  guifg=#a8a8a8  guibg=#080808
hi ModeMsg        ctermfg=220                                guifg=#ffd700

hi ErrorMsg       ctermfg=196   ctermbg=52                   guifg=#ff0000  guibg=#5f0000
hi SpellBad       ctermfg=196   ctermbg=52

hi Directory       ctermfg=12                 cterm=bold     guifg=#0000ff

if version >= 700
  hi CursorLine   ctermbg=236                                               guibg=#303030
  hi CursorColumn ctermbg=236                                               guibg=#303030
  hi MatchParen   ctermfg=157   ctermbg=237   cterm=bold     guifg=#afffaf  guibg=#3a3a3a
  hi Pmenu        ctermfg=255   ctermbg=236                  guifg=#eeeeee  guibg=#303030
  hi PmenuSel     ctermfg=0     ctermbg=74                   guifg=#000000  guibg=#5fafd7
  hi PmenuSbar                  ctermbg=243                                 guibg=#767676
  hi PmenuThumb                 ctermbg=252                                 guibg=#d0d0d0
  hi WildMenu     ctermfg=255   ctermbg=33                   guifg=#eeeeee  guibg=#0087ff
endif

" Syntax highlighting
hi Comment        ctermfg=244                                guifg=#808080

hi Include        ctermfg=130                                guifg=#af5f00
hi Builtin        ctermfg=68                                 guifg=#5f87d7
hi Constant       ctermfg=220                 cterm=bold     guifg=#ffd700
hi String         ctermfg=107   ctermbg=233                  guifg=#87af5f  guibg=#121212
hi Character      ctermfg=228   ctermbg=16                   guifg=#ffff87  guibg=#000000
hi Number         ctermfg=214                                guifg=#ffaf00
hi Float          ctermfg=142                                guifg=#afaf00
hi Boolean        ctermfg=148                                guifg=#afd700

hi Identifier     ctermfg=149                                guifg=#afd75f
hi Function       ctermfg=231                                guifg=#ffffff

hi Statement      ctermfg=103                                guifg=#8787af
hi Conditional    ctermfg=105                                guifg=#8787ff
hi Repeat         ctermfg=105                                guifg=#8787ff
hi Label          ctermfg=105                                guifg=#8787ff
hi Operator       ctermfg=243                                guifg=#767676
hi Keyword        ctermfg=190                                guifg=#d7ff00
hi Exception      ctermfg=166   ctermbg=0                    guifg=#d75f00  guibg=#000000

hi PreProc        ctermfg=229                                guifg=#ffffaf

hi Type           ctermfg=111                                guifg=#87afff
hi Structure      ctermfg=111   ctermbg=233                  guifg=#87afff  guibg=#121212

hi Special        ctermfg=220                                guifg=#ffd700
hi SpecialComment ctermfg=228   ctermbg=16                   guifg=#ffff87  guibg=#000000

hi Error          ctermfg=196   ctermbg=52                   guifg=#ff0000  guibg=#5f0000
hi Todo           ctermfg=46    ctermbg=22                   guifg=#00ff00  guibg=#005f00

" Diff
hi diffAdd        ctermfg=bg    ctermbg=151                  guifg=#afd787
hi diffDelete     ctermfg=bg    ctermbg=246                  guifg=#d78787
hi diffChange     ctermfg=bg    ctermbg=181                  guifg=#000000  guibg=#afd7af
hi diffText       ctermfg=bg    ctermbg=174   cterm=bold     guifg=#000000  guibg=#949494

" Cursor
hi iCursor         guifg=#000000 guibg=#FDFF00
hi vCursor         guifg=#000000 guibg=#AAF412

" Python
hi link pythonBuiltin Builtin

" Ruby
hi rubyBlockParameter        ctermfg=27                      guifg=#005fff
hi rubyClass                 ctermfg=75                      guifg=#5fafff
hi rubyConstant              ctermfg=167                     guifg=#d75f5f
hi rubyInterpolation         ctermfg=107                     guifg=#87af5f
hi rubyLocalVariableOrMethod ctermfg=189                     guifg=#d7d7ff
hi rubyPredefinedConstant    ctermfg=167                     guifg=#d75f5f
hi rubyPseudoVariable        ctermfg=221                     guifg=#ffd75f
hi rubyStringDelimiter       ctermfg=143                     guifg=#afaf5f

" git gutter
hi GitGutterAdd             ctermbg=232 ctermfg=2 guifg=#009900
hi GitGutterChange          ctermbg=232 ctermfg=3 guifg=#bbbb00
hi GitGutterDelete          ctermbg=232 ctermfg=1 guifg=#ff2222
hi GitGutterChangeDelete    ctermbg=232 ctermfg=3 guifg=#bbbb00
hi link GitGutterChangeDelete GitGutterChange

hi GreenBar term=reverse ctermfg=white ctermbg=green guifg=#FFFFFF guibg=#604A8C
hi RedBar   term=reverse ctermfg=white ctermbg=red guifg=#FFFFFF guibg=#C50048

hi EasyMotionTarget guifg=#E4E500 guibg=bg gui=bold
hi EasyMotionShade  guifg=#444444 guibg=bg gui=bold
hi Directory       guifg=#A6E22E               gui=bold
hi Ignore          guifg=#808080 guibg=bg

hi Macro           guifg=#C4BE89               gui=italic
hi SpecialKey      guifg=#66D9EF               gui=italic

hi InterestingWord1 guifg=#000000 guibg=#FFA700
hi InterestingWord2 guifg=#000000 guibg=#53FF00
hi InterestingWord3 guifg=#000000 guibg=#FF74F8

hi MoreMsg         guifg=#E6DB74

hi PreCondit       guifg=#A6E22E               gui=bold
hi Question        guifg=#66D9EF

" marks column
hi IndentGuides                  guibg=#373737
hi SignColumn      guifg=#A6E22E guibg=#151617
hi SpecialChar     guifg=#F92672               gui=bold
hi SpecialKey      guifg=#888A85               gui=italic
hi StatusLine      guifg=#CD5907 guibg=fg
hi StatusLineNC    guifg=#808080 guibg=#080808
hi StorageClass    guifg=#FD971F               gui=italic

" Structure is the light blue color
hi Tag             guifg=#F92672               gui=italic
hi Title           guifg=#ef5939

hi Typedef         guifg=#66D9EF
hi Underlined      guifg=#808080               gui=underline

hi WarningMsg      guifg=#FFFFFF guibg=#333333 gui=bold

hi MyTagListFileName guifg=#F92672 guibg=bg gui=bold

" Spelling
if has("spell")
    hi SpellBad    guisp=#FF0000 gui=undercurl
    hi SpellCap    guisp=#7070F0 gui=undercurl
    hi SpellLocal  guisp=#70F0F0 gui=undercurl
    hi SpellRare   guisp=#FFFFFF gui=undercurl
endif

" Invisible character colors
highlight NonText    ctermfg=240 ctermbg=233 guifg=#444444 guibg=bg
highlight SpecialKey ctermfg=245             guifg=#444444 guibg=bg

" nathanaelkane/vim-indent-guides
hi IndentGuidesOdd  ctermbg=236 guibg=#303030
hi IndentGuidesEven ctermbg=237 guibg=#3a3a3a

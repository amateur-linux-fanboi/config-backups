set background=light

hi clear 
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = 'Rosalind'

hi Normal                   ctermbg=225         ctermfg=233         guifg=#1E000E     guibg=#F0E3E1
hi Comment                  ctermbg=NONE        ctermfg=240         guifg=#545C52     guibg=NONE
hi Special                  ctermbg=NONE        ctermfg=22          guifg=#545C52     guibg=NONE
hi PreProc                  ctermbg=NONE        ctermfg=17          guifg=#545C52     guibg=NONE
hi Constant                 ctermbg=NONE        ctermfg=NONE        guifg=#E06900     guibg=NONE
hi Number                   ctermbg=NONE        ctermfg=130         guifg=#E06900     guibg=NONE
hi Boolean                  ctermbg=NONE        ctermfg=34          guifg=#E06900     guibg=NONE
hi Type                     ctermbg=NONE        ctermfg=13          guifg=#E06900     guibg=NONE
hi Underlined               ctermbg=NONE        ctermfg=136         guifg=NONE        guibg=NONE cterm=italic gui=italic
hi Identifier               ctermbg=NONE        ctermfg=52          guifg=#E06900     guibg=NONE
hi Operator                 ctermbg=NONE        ctermfg=130         guifg=#175676     guibg=NONE
hi Statement                ctermbg=NONE        ctermfg=cyan        guifg=#D7CF07     guibg=NONE
hi Cursor                   ctermbg=NONE        ctermfg=NONE        guifg=#E74B72     guibg=NONE
hi CursorLine               ctermbg=224         ctermfg=NONE        guifg=#1E000E     guibg=#E4CCC9 cterm=NONE
hi CursorColumn             ctermbg=224         ctermfg=NONE        guifg=NONE     guibg=#E4CCC9
hi LineNr                   ctermbg=224         ctermfg=233         guifg=NONE     guibg=#E4CCC9
hi LineNrAbove              ctermbg=224         ctermfg=233         guifg=NONE     guibg=#E4CCC9
hi LineNrBelow              ctermbg=224         ctermfg=233         guifg=NONE     guibg=#E4CCC9
hi CursorLineNr             ctermbg=224         ctermfg=233         guifg=NONE     guibg=#E74B72 cterm=bold
hi VertSplit                ctermbg=NONE        ctermfg=NONE        guifg=NONE     guibg=NONE
"hi IncSearch                ctermbg=NONE        ctermfg=NONE        guifg=#F0E3E1     guibg=#1E000E
hi MatchParen               ctermbg=88          ctermfg=225         guifg=#F0E3E1     guibg=#BB3333
hi Search                   ctermbg=88          ctermfg=255         guifg=#F0E3E1     guibg=#1E000E
hi SpellBad                 ctermbg=9           ctermfg=45          guifg=NONE     guibg=NONE cterm=underline
hi SpellCap                 ctermbg=NONE        ctermfg=9           guifg=NONE     guibg=NONE
hi SpellLocal               ctermbg=NONE        ctermfg=9           guifg=NONE     guibg=NONE
hi Visual                   ctermbg=86          ctermfg=NONE        guifg=NONE     guibg=#4BA3C3

" Highlight links

hi link SpellLocal SpellRare 
hi link IncSearch  Search 



" Markdown Syntax rules

hi link markdownH1 Underlined
hi link markdownH2 Underlined
hi link markdownH3 Underlined
hi link markdownH4 Underlined
hi link markdownH5 Underlined
hi link markdownH6 Underlined

hi link markdownListmarker Number
hi link markdownOrderedListmarker Number
hi markdownURL              ctermbg=NONE        ctermfg=75          guifg=#5FAFFF     guibg=NONE    cterm=underline 


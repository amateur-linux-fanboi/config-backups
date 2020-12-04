set background=light

hi clear 
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = 'Rosalind'

hi Normal                   ctermbg=225         ctermfg=233         guifg=NONE     guibg=NONE
hi Comment                  ctermbg=NONE        ctermfg=240         guifg=NONE     guibg=NONE
hi Special                  ctermbg=NONE        ctermfg=22          guifg=NONE     guibg=NONE
hi PreProc                  ctermbg=NONE        ctermfg=17          guifg=NONE     guibg=NONE
hi Constant                 ctermbg=NONE        ctermfg=NONE        guifg=NONE     guibg=NONE
hi Number                   ctermbg=NONE        ctermfg=130         guifg=NONE     guibg=NONE
hi Boolean                  ctermbg=NONE        ctermfg=34          guifg=NONE     guibg=NONE
hi Type                     ctermbg=NONE        ctermfg=13          guifg=NONE     guibg=NONE
hi Underlined               ctermbg=NONE        ctermfg=136         guifg=NONE     guibg=NONE cterm=italic gui=italic
hi Identifier               ctermbg=NONE        ctermfg=52          guifg=NONE     guibg=NONE
hi Operator                 ctermbg=NONE        ctermfg=130         guifg=NONE     guibg=NONE
hi Statement                ctermbg=NONE        ctermfg=cyan        guifg=NONE     guibg=NONE
hi Cursor                   ctermbg=NONE        ctermfg=234         guifg=NONE     guibg=NONE
hi CursorLine               ctermbg=219         ctermfg=NONE        guifg=NONE     guibg=NONE cterm=NONE
hi CursorColumn             ctermbg=219         ctermfg=NONE        guifg=NONE     guibg=NONE
hi LineNr                   ctermbg=217         ctermfg=233         guifg=NONE     guibg=NONE
hi LineNrAbove              ctermbg=224         ctermfg=233         guifg=NONE     guibg=NONE
hi LineNrBelow              ctermbg=224         ctermfg=233         guifg=NONE     guibg=NONE
hi CursorLineNr             ctermbg=219         ctermfg=233         guifg=NONE     guibg=NONE cterm=bold
hi VertSplit                ctermbg=NONE        ctermfg=125         guifg=NONE     guibg=NONE
hi MatchParen               ctermbg=88          ctermfg=225         guifg=NONE     guibg=NONE
hi Search                   ctermbg=88          ctermfg=255         guifg=NONE     guibg=NONE
hi SpellBad                 ctermbg=238         ctermfg=231         guifg=NONE     guibg=NONE cterm=underline
hi SpellCap                 ctermbg=NONE        ctermfg=9           guifg=NONE     guibg=NONE
hi SpellLocal               ctermbg=NONE        ctermfg=9           guifg=NONE     guibg=NONE
hi Visual                   ctermbg=86          ctermfg=NONE        guifg=NONE     guibg=NONE
hi ErrorMsg                 ctermbg=193         ctermfg=53          guifg=NONE     guibg=NONE

" Highlight links

hi link SpellLocal SpellRare 
hi link IncSearch  Search 



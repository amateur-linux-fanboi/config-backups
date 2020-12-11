" Rosalind Colour scheme by Raghunandan.
" Version 0.8
" 
" 
" TODO: Gui colours have not yet been configured
" 
" 
" Last update: 05 December 2020 
" 
" 



set background=light


hi clear 
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = 'Rosalind'


set t_Co=256

hi Normal                   ctermbg=225         ctermfg=233         guifg=NONE     guibg=NONE
hi Comment                  ctermbg=NONE        ctermfg=242         guifg=NONE     guibg=NONE
hi Special                  ctermbg=NONE        ctermfg=22          guifg=NONE     guibg=NONE
hi PreProc                  ctermbg=NONE        ctermfg=17          guifg=NONE     guibg=NONE
hi Constant                 ctermbg=NONE        ctermfg=NONE        guifg=NONE     guibg=NONE
hi Number                   ctermbg=NONE        ctermfg=130         guifg=NONE     guibg=NONE
hi Boolean                  ctermbg=NONE        ctermfg=34          guifg=NONE     guibg=NONE
hi Type                     ctermbg=NONE        ctermfg=13          guifg=NONE     guibg=NONE
hi Underlined               ctermbg=NONE        ctermfg=136         guifg=NONE     guibg=NONE cterm=italic gui=italic
hi Identifier               ctermbg=NONE        ctermfg=52          guifg=NONE     guibg=NONE
hi Operator                 ctermbg=NONE        ctermfg=130         guifg=NONE     guibg=NONE
hi Statement                ctermbg=NONE        ctermfg=61          guifg=NONE     guibg=NONE
hi Cursor                   ctermbg=224         ctermfg=233         guifg=NONE     guibg=NONE
hi CursorLine               ctermbg=219         ctermfg=NONE        guifg=NONE     guibg=NONE cterm=none
hi CursorColumn             ctermbg=219         ctermfg=233         guifg=NONE     guibg=NONE 
hi LineNr                   ctermbg=217         ctermfg=233         guifg=NONE     guibg=NONE
hi LineNrAbove              ctermbg=224         ctermfg=233         guifg=NONE     guibg=NONE
hi LineNrBelow              ctermbg=224         ctermfg=233         guifg=NONE     guibg=NONE
hi CursorLineNr             ctermbg=219         ctermfg=233         guifg=NONE     guibg=NONE cterm=bold
hi VertSplit                ctermbg=NONE        ctermfg=125         guifg=NONE     guibg=NONE
hi MatchParen               ctermbg=88          ctermfg=225         guifg=NONE     guibg=NONE
hi Search                   ctermbg=88          ctermfg=255         guifg=NONE     guibg=NONE
hi SpellBad                 ctermbg=238         ctermfg=231         guifg=NONE     guibg=NONE cterm=underline
hi SpellCap                 ctermbg=219         ctermfg=9           guifg=NONE     guibg=NONE
hi SpellLocal               ctermbg=219         ctermfg=9           guifg=NONE     guibg=NONE
hi Visual                   ctermbg=86          ctermfg=NONE        guifg=NONE     guibg=NONE
hi Error                    ctermbg=196         ctermfg=230         guifg=NONE     guibg=NONE
hi StatusLine               ctermbg=16          ctermfg=175         guifg=NONE     guibg=NONE term=bold
hi StatusLineNC             ctermbg=213         ctermfg=240         guifg=NONE     guibg=NONE
hi TabLine                  ctermbg=16          ctermfg=177         guifg=NONE     guibg=NONE term=bold
hi TabLineFill              ctermbg=177         ctermfg=16          guifg=NONE     guibg=NONE term=bold
hi TabLineSel               ctermbg=177         ctermfg=16          guifg=NONE     guibg=NONE term=bold

" Highlight links

hi link SpellRare SpellLocal 
hi link IncSearch  Search 

" Markdown stuff

" Because I don't like the colour of the headings 
hi link markdownH1 Underlined
hi link markdownH2 Underlined
hi link markdownH3 Underlined
hi link markdownH4 Underlined
hi link markdownH5 Underlined
hi link markdownH6 Underlined


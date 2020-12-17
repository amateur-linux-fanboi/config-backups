" Rosalind Colour scheme by Raghunandan.
" Version 1.03
" 
" 
" 
" 
" Last update: 17 December 2020 
" 
" 



set background=light


hi clear 
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = 'Rosalind'


set t_Co=256

hi Normal                   ctermbg=225         ctermfg=233         guifg=#101010     guibg=#FFEAEA
hi Comment                  ctermbg=NONE        ctermfg=242         guifg=#6C6C6C     guibg=NONE
hi Special                  ctermbg=NONE        ctermfg=22          guifg=#007700     guibg=NONE
hi PreProc                  ctermbg=NONE        ctermfg=17          guifg=#000052     guibg=NONE
hi Constant                 ctermbg=NONE        ctermfg=NONE        guifg=NONE     guibg=NONE
hi Number                   ctermbg=NONE        ctermfg=130         guifg=#BF5F00     guibg=NONE
hi Boolean                  ctermbg=NONE        ctermfg=34          guifg=#00AF3F     guibg=NONE
hi Type                     ctermbg=NONE        ctermfg=13          guifg=#AC5285     guibg=NONE
hi Underlined               ctermbg=NONE        ctermfg=136         guifg=#A17700     guibg=NONE cterm=italic gui=italic
hi Identifier               ctermbg=NONE        ctermfg=52          guifg=#840B0B     guibg=NONE
hi Operator                 ctermbg=NONE        ctermfg=130         guifg=#BF4F33     guibg=NONE
hi Statement                ctermbg=NONE        ctermfg=61          guifg=#5F20AF     guibg=NONE
hi Cursor                   ctermbg=224         ctermfg=233         guifg=#F6F4F2     guibg=#004f4f
hi CursorLine               ctermbg=219         ctermfg=NONE        guifg=NONE     guibg=#F0C5F0 cterm=none
hi CursorColumn             ctermbg=219         ctermfg=233         guifg=NONE     guibg=#F0C5F0
hi LineNr                   ctermbg=217         ctermfg=233         guifg=#303030     guibg=#FFB3B3
hi LineNrAbove              ctermbg=224         ctermfg=233         guifg=NONE     guibg=NONE
hi LineNrBelow              ctermbg=224         ctermfg=233         guifg=NONE     guibg=NONE
hi CursorLineNr             ctermbg=219         ctermfg=233         guifg=NONE     guibg=#FFC2C2 cterm=bold gui=bold
hi VertSplit                ctermbg=NONE        ctermfg=125         guifg=#B6006B     guibg=NONE
hi MatchParen               ctermbg=87          ctermfg=233         guifg=NONE     guibg=#5FFFFF
hi Search                   ctermbg=90          ctermfg=225         guifg=#FFEAEA     guibg=#470047
hi SpellBad                 ctermbg=238         ctermfg=231         guifg=#F0F0F0     guibg=#404040 cterm=underline gui=none
hi SpellCap                 ctermbg=219         ctermfg=9           guifg=#E51010     guibg=#DD9296 gui=underline
hi SpellLocal               ctermbg=219         ctermfg=9           guifg=#E51010     guibg=#DD9296 gui=underline
hi Visual                   ctermbg=86          ctermfg=NONE        guifg=NONE     guibg=#1FDADA
hi Error                    ctermbg=196         ctermfg=230         guifg=NONE     guibg=NONE
hi StatusLine               ctermbg=16          ctermfg=175         guifg=#E797BF     guibg=#500550 term=bold gui=bold
hi StatusLineNC             ctermbg=213         ctermfg=240         guifg=#300330     guibg=#903060 gui=bold
hi TabLine                  ctermbg=16          ctermfg=177         guifg=NONE     guibg=#D787FF term=bold
hi TabLineFill              ctermbg=177         ctermfg=16          guifg=#D787FF     guibg=NONE term=bold
hi TabLineSel               ctermbg=177         ctermfg=16          guifg=#D787FF     guibg=NONE term=bold

" Highlight links

hi link IncSearch  Search 
" Markdown stuff

" Because I don't like the colour of the headings 
hi link markdownH1 Underlined
hi link markdownH2 Underlined
hi link markdownH3 Underlined
hi link markdownH4 Underlined
hi link markdownH5 Underlined
hi link markdownH6 Underlined


" Rosa Colour scheme by Raghunandan.
" Version 1.03
" 
" 
" This is a fork of the Rosalind colour scheme that relies completely
" on GUI colours. 
" 
" Last update: 14 December 2020 
" 
" 



set background=light


hi clear 
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = 'Rosa'


set t_Co=256

hi Normal                   ctermbg=NONE         ctermfg=NONE         guifg=#101010     guibg=#FFEAEA
hi Comment                  ctermbg=NONE        ctermfg=NONE         guifg=#6C6C6C     guibg=NONE
hi Special                  ctermbg=NONE        ctermfg=NONE          guifg=#007700     guibg=NONE
hi PreProc                  ctermbg=NONE        ctermfg=NONE          guifg=#000052     guibg=NONE
hi Constant                 ctermbg=NONE        ctermfg=NONE        guifg=NONE     guibg=NONE
hi Number                   ctermbg=NONE        ctermfg=NONE         guifg=#BF5F00     guibg=NONE
hi Boolean                  ctermbg=NONE        ctermfg=NONE          guifg=#00AF3F     guibg=NONE
hi Type                     ctermbg=NONE        ctermfg=NONE          guifg=#AC5285     guibg=NONE
hi Underlined               ctermbg=NONE        ctermfg=NONE         guifg=#A17700     guibg=NONE cterm=italic gui=italic
hi Identifier               ctermbg=NONE        ctermfg=NONE          guifg=#840B0B     guibg=NONE
hi Operator                 ctermbg=NONE        ctermfg=NONE         guifg=#BF4F33     guibg=NONE
hi Statement                ctermbg=NONE        ctermfg=NONE          guifg=#5F20AF     guibg=NONE
hi Cursor                   ctermbg=NONE         ctermfg=NONE         guifg=#F6F4F2     guibg=#004f4f
hi CursorLine               ctermbg=NONE         ctermfg=NONE        guifg=NONE     guibg=#F0C5F0 cterm=none
hi CursorColumn             ctermbg=NONE         ctermfg=NONE         guifg=NONE     guibg=#F0C5F0
hi LineNr                   ctermbg=NONE         ctermfg=NONE         guifg=#303030     guibg=#FFB3B3
hi LineNrAbove              ctermbg=NONE         ctermfg=NONE         guifg=NONE     guibg=NONE
hi LineNrBelow              ctermbg=NONE         ctermfg=NONE         guifg=NONE     guibg=NONE
hi CursorLineNr             ctermbg=NONE         ctermfg=NONE         guifg=NONE     guibg=#FFC2C2 cterm=bold gui=bold
hi VertSplit                ctermbg=NONE        ctermfg=NONE         guifg=#B6006B     guibg=NONE
hi MatchParen               ctermbg=NONE          ctermfg=NONE         guifg=NONE     guibg=#5FFFFF
hi Search                   ctermbg=NONE          ctermfg=NONE         guifg=#FFEAEA     guibg=#470047
hi SpellBad                 ctermbg=NONE         ctermfg=NONE         guifg=#F0F0F0     guibg=#404040 cterm=underline gui=none
hi SpellCap                 ctermbg=NONE         ctermfg=NONE           guifg=#E51010     guibg=#DD9296 gui=underline
hi Visual                   ctermbg=NONE          ctermfg=NONE        guifg=NONE     guibg=#1FDADA
hi Error                    ctermbg=NONE         ctermfg=NONE         guifg=NONE     guibg=NONE
hi StatusLine               ctermbg=NONE          ctermfg=NONE         guifg=#E797BF     guibg=#500550 term=bold gui=bold
hi StatusLineNC             ctermbg=NONE         ctermfg=NONE         guifg=#300330     guibg=#903060 gui=bold
hi TabLine                  ctermbg=NONE          ctermfg=NONE         guifg=NONE     guibg=#D787FF term=bold
hi TabLineFill              ctermbg=NONE         ctermfg=NONE          guifg=#D787FF     guibg=NONE term=bold
hi TabLineSel               ctermbg=NONE         ctermfg=NONE          guifg=#D787FF     guibg=NONE term=bold

" Highlight links

hi link SpellRare SpellCap 
hi link SpellLocal SpellCap
hi link IncSearch  Search 
" Markdown stuff

" Because I don't like the colour of the headings 
hi link markdownH1 Underlined
hi link markdownH2 Underlined
hi link markdownH3 Underlined
hi link markdownH4 Underlined
hi link markdownH5 Underlined
hi link markdownH6 Underlined


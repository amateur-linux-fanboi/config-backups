
" Caribbean Colour scheme by Raghunandan.
" Version 0.1
" 
" 
" 
" 
" Last update: 14 December 2020 
" 
" 



set background=light


highlight clear 

if exists("syntax_on")
    syntax reset
endif

let g:colors_name = 'Caribbean'


set t_Co=256


let s:gsky="#C2CEFF"
let s:gbaby="#FF99BE"
let s:gblue="#456AFF"
let s:ggrey="#181825"
let s:gmint="#99FFA2"
let s:gpink="#FF0A64"
let s:gblack="#0A0A0F"
let s:ggreen="#00A30E"
let s:gwhite="#F9F9B9"
let s:gorange="#DF5E01"
let s:gyellow="#FDF000"

let s:tsky=189
let s:tbaby=218
let s:tblue=63
let s:tgrey=239
let s:tmint=121
let s:tpink=198
let s:tblack=233
let s:tgreen=40
let s:twhite=230
let s:torange=166
let s:tyellow=226

function! s:paint(thing,ctbg=NONE,ctfg=NONE,gubg=NONE,gufg=NONE)
    exec "highlight " .a:thing "ctermbg=".a:ctbg."  ctermfg=".a:ctfg."    guibg=".a:gubg."  guifg=".a:gufg
endfunction


call s:paint("Normal",s:twhite,s:tblack,s:gwhite,s:gblack)
call s:paint("Comment","NONE",s:tgrey,"NONE",s:ggrey)
"call s:paint("Special",,,,)"Special
call s:paint("Preproc","NONE",s:tblue,"NONE",s:gblue)
call s:paint("constant","NONE",s:tpink,"NONE",s:gpink)
call s:paint("Type",s:tyellow,"NONE",s:gyellow,"NONE")
"Underlined
call s:paint("Identifier","NONE",s:tgreen,"NONE",s:ggreen)
call s:paint("Statement","NONE",s:tblue,"NONE",s:gblue)
call s:paint("Cursor",s:tpink,s:tblack,s:gpink,s:gblack)
call s:paint("CursorLine",s:tsky,"NONE",s:gsky,"NONE")
call s:paint("CursorColumn",s:tsky,"NONE",s:gsky,"NONE")
call s:paint("CursorLineNr",s:tsky,"NONE",s:gsky,"NONE")
call s:paint("LineNr",s:tgreen,"NONE",s:ggreen,"NONE")
call s:paint("VertSplit","NONE",s:tblack,"NONE",s:gblack)
call s:paint("MatchParen",s:tpink,s:twhite,s:gpink,s:gwhite)
call s:paint("Search",s:tpink,s:twhite,s:gpink,s:gwhite)
call s:paint("SpellBad",s:tmint,s:torange,s:gmint,s:gorange)
call s:paint("SpellRare",s:tmint,s:torange,s:gmint,s:gorange)
call s:paint("SpellLocal",s:tmint,s:torange,s:gmint,s:gorange)
call s:paint("SpellCap",s:tmint,s:torange,s:gmint,s:gorange)
call s:paint("Visual",s:tpink,s:twhite,s:gpink,s:gwhite)
call s:paint("StatusLine",s:tyellow,s:tblack,s:gyellow,s:gblack)
call s:paint("StatusLineNC",s:tyellow,s:tblack,s:gyellow,s:gblack)
call s:paint("TabLine",s:tblack,s:tblue,s:gblack,s:gblue)
call s:paint("TabLineFill",s:tblack,s:tblue,s:gblack,s:gblue)
call s:paint("TabLineSel",s:tblue,s:tblack,s:gblue,s:gblack)
call s:paint("Underlined",s:twhite,s:tpink,s:gwhite,s:gpink)

hi Underlined       cterm=italic gui=italic
hi CursorLine       cterm=none
hi CursorLineNr     cterm=none


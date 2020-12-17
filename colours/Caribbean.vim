
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


let s:gpink="#FF2272"
let s:gblue="#456AFF"
let s:ggrey="#181825"
let s:gwhite="#F9F9B9"
let s:gblack="#0A0A0F"
let s:ggreen="#33FF44"
let s:gyellow="#FDF000"

let s:tpink=198
let s:tblue=63
let s:tgrey=239
let s:twhite=230
let s:tblack=233
let s:tgreen=47
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
call s:paint("CursorLine","195","NONE","#d7ffff","NONE")
call s:paint("CursorColumn","195","NONE","#d7ffff","NONE")
call s:paint("CursorLineNr","44","NONE","#00d7d7","NONE")
call s:paint("LineNr",s:tgreen,"NONE",s:ggreen,"NONE")
call s:paint("VertSplit","NONE",s:tblack,"NONE",s:gblack)
call s:paint("MatchParen",s:tpink,s:twhite,s:gpink,s:gwhite)
call s:paint("Search",s:tpink,s:twhite,s:gpink,s:gwhite)
call s:paint("SpellBad","16","231",s:gblack,s:gwhite)
call s:paint("SpellRare","16","231",s:gblack,s:gwhite)
call s:paint("SpellLocal","16","231",s:gblack,s:gwhite)
call s:paint("SpellCap","16","231",s:gblack,s:gwhite)
call s:paint("Visual",s:tpink,s:twhite,s:gpink,s:gwhite)
call s:paint("StatusLine",s:tyellow,s:tblack,s:gyellow,s:gblack)
call s:paint("StatusLineNC",s:tyellow,s:tblack,s:gyellow,s:gblack)
call s:paint("TabLine",s:tblack,s:tblue,s:gblack,s:gblue)
call s:paint("TabLineFill",s:tblack,s:tblue,s:gblack,s:gblue)
call s:paint("TabLineSel",s:tblue,s:tblack,s:gblue,s:gblack)
call s:paint("Underlined",s:tpink,s:twhite,s:gpink,s:gwhite)
hi Underlined cterm=italic gui=italic


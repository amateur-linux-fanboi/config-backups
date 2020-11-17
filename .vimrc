" Startup settings for vim

"Numbering lines in a convenient fashion.
set number relativenumber
set numberwidth=4

"For convenient search
set smartcase
set incsearch

" To keep the caret centered while editing
:set scrolloff=500
nnoremap j jzz
nnoremap k kzz
nnoremap G Gzz
nnoremap o o<ESC>zzi



"Some mild irritation to get used to vim bindings
"In normal mode
nnoremap <Left>	 :echoe "Use h"<CR>
nnoremap <Down>	 :echoe "Use j"<CR>
nnoremap <Up>	 :echoe "Use k"<CR>
nnoremap <Right> :echoe "Use l"<CR>


"In insert mode
inoremap <Left>	<ESC>:echoe "Use h"<CR>
inoremap <Down>	 <ESC>:echoe "Use j"<CR>
inoremap <Up> 	 <ESC>:echoe "Use k"<CR>
inoremap <Right>	 <ESC>:echoe "Use l"<CR>

" Window movements bound to vim bindings
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>



"Orders for backspace to behave properly.
set backspace=indent,eol,start 

"Color Scheme.
colo atom-dark-256 	" Available at https://github.com/gosukiwi/vim-atom-dark
"colo atom-dark		" Available at https://github.com/gosukiwi/vim-atom-dark
"colo medic_chalk	" Available at https://github.com/ParamagicDev/vim-medic_chalk
"colo onehalfdark	" Available at https://github.com/sonph/onehalf/tree/master/vim

"Switching on syntax highlights
syntax on 	" I'll switch it off if ever I don't want it.

" Spelling check (in US English and French)
set spell spelllang=en_us
set spell spelllang+=fr

" Startup message
"echom "    Hello, Babe! (*^_^*)    "

" Mapping leader
let mapleader = "=" 

" Quick opening of vimrc file
nnoremap <leader>er :split $MYVIMRC<cr>

"Quick sourcing of vimrc file
nnoremap <leader>src :source $MYVIMRC<cr>


" Autoclose commands

inoremap ( ()<left>
inoremap { {}<left>
inoremap [ []<left>

inoremap (<BS> <NOP>
inoremap {<BS> <NOP>
inoremap [<BS> <NOP>

inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap <expr> }  strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"
inoremap <expr> ]  strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"






" For quotation marks 
inoremap " ""<left>
inoremap <expr> "  strpart(getline('.'), col('.')-1, 1) == '"' ? "\<Right>" : '"'
inoremap "<BS> <NOP>

" LaTeX Specific stuff

"The following command is redundant, seeing as it functionally does the
"same thing as the mapping nine lines prior.
":autocmd FileType plaintex :iabbrev \begin{ \begin{}<left> 

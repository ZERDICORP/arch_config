""""""""""""""""""""""""
" main editor settings "
""""""""""""""""""""""""

filetype plugin indent on 

syntax on

set nocompatible
set number relativenumber
set tabstop=2
set shiftwidth=2
set expandtab
set encoding=UTF-8
set guioptions=
set showtabline=0
set wrap linebreak nolist
set timeoutlen=0



"""""""""""
" plugins "
"""""""""""

call plug#begin()

  Plug 'ervandew/supertab'

call plug#end()



""""""""""""""
" appearance "
""""""""""""""

hi Visual cterm=none ctermbg=darkgrey ctermfg=cyan
hi MatchParen cterm=none ctermbg=yellow ctermfg=black



"""""""""""""""""""
" cursor settings "
"""""""""""""""""""

let &t_SI.="\e[5 q" "SI = insert
let &t_SR.="\e[3 q" "SR = reaplce
let &t_EI.="\e[1 q" "EI = normal



""""""""""""""""""""
" vim transparency "
""""""""""""""""""""

highlight clear LineNr
highlight clear SignColumn
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE



"""""""""""""""
" keybindings "
"""""""""""""""
nnoremap <F2> :set number! relativenumber!<CR>



"""""""""""""""""""""""""""
" hard mode (fuck arrows) "
"""""""""""""""""""""""""""

inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <C-Down> <Nop>
inoremap <C-Left> <Nop>
inoremap <C-Right> <Nop>
inoremap <C-Up> <Nop>

nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>
nnoremap <C-Down> <Nop>
nnoremap <C-Left> <Nop>
nnoremap <C-Right> <Nop>
nnoremap <C-Up> <Nop>

vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>
vnoremap <C-Down> <Nop>
vnoremap <C-Left> <Nop>
vnoremap <C-Right> <Nop>
vnoremap <C-Up> <Nop>

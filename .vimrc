filetype plugin indent on 

syntax enable

set nocompatible
set number
set tabstop=2
set shiftwidth=2
set expandtab
set relativenumber
set encoding=UTF-8
set guioptions=
set showtabline=0
set wrap linebreak nolist
set cursorline
set timeoutlen=0

"""""""""""
" plugins "
"""""""""""

call plug#begin('~/.vim/bundle')

  Plug 'ErichDonGubler/vim-sublime-monokai'
  Plug 'vim-airline/vim-airline'
  Plug 'ryanoasis/vim-devicons'

call plug#end()

"""""""""""""""""""
" cursor settings "
"""""""""""""""""""

let &t_SI.="\e[5 q" "SI = insert
let &t_SR.="\e[3 q" "SR = reaplce
let &t_EI.="\e[1 q" "EI = normal

""""""""""""""""""""
" airline settings "
""""""""""""""""""""

let g:airline_powerline_fonts = 1
let g:airline#extensions#keymap#enabled = 0
let g:airline_section_z = "\ue0a1:%l/%L Col:%c" 
let g:Powerline_symbols='unicode' 
let g:airline#extensions#xkblayout#enabled = 0

colorscheme sublimemonokai

""""""""""""""""""""
" vim transparency "
""""""""""""""""""""

highlight clear LineNr
highlight clear SignColumn
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE

set number
set mouse=a 
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2

call plug#begin('~/.vim/plugged')

let mapleader = ' ' 
let NERDTreeQuitOnOpen = 1

"Keyboard

nmap <leader>nt :NERDTreeFind<CR>

nmap <leader>s <plug>(easymotion-s2)

nmap <Leader>c  <space><plug>NERDComment Comment)
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>t :terminal<CR>
 
"Powerline config

set laststatus=2

let g:airline_powerline_fonts = 1


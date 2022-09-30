
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

"NOTE: Nvim_Tree Config
nnoremap <leader>nt :NvimTreeToggle<CR>
nnoremap <leader>nt :NvimTreeFocus<CR>
nnoremap <leader>nf :NvimTreeFindFile<CR>
nnoremap <leader>cc :NvimTreeCollapse<CR>


nmap <leader>s <plug>(easymotion-s2)

nmap <Leader>c  <space><plug>NERDComment Comment)
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>t :terminal<CR>
 
"Powerline config
set laststatus=2

let g:airline_powerline_fonts = 1

"NOTE: OverWritting the Semshi Plugin

function MyCustomHighligh()
  hi semshiLocal ctermfg=0 guifg=#000000
  hi semshiGlobal ctermfg=0 guifg=#5C0002
"#ffb74d
  hi semshiImported ctermfg=0 guifg=#e3f2fd cterm=bold gui=bold
  hi semshiParameter ctermfg=1 guifg=#e57373

  hi semshiFree ctermfg=1 guifg=#ffa726
  hi semshiBuiltin ctermfg=1 guifg=#29b6f6
  hi semshiAttribute ctermfg=1 guifg=#717CB4
  hi semshiSelf ctermfg=1 guifg=#f07178
  "hi semshiUnresolved ctermfg=1 guifg=#000000 cterm=underline gui=underline
  hi semshiSelected ctermfg=1 guifg=1 ctermbg=1 guibg=1

  ""hi semshiErrorSign ctermfg=1 guifg=1 ctermbg=1 guibg=1 
  ""hi semshiErrorChar ctermfg=1 guifg=1 ctermbg=1 guibg=1

endfunction

"autocmd Filetype python call MyCustomHighligh()

set number
set mouse=a 
set numberwidth=1
set clipboard=unnamedplus
filetype plugin indent on
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=4
set relativenumber
set laststatus=2
set splitbelow
set splitright

call plug#begin('~/.vim/plugged')

let mapleader = ' '
let NERDTreeQuitOnOpen = 1

"Keyboard

"NOTE: Nvim_Tree Config
nnoremap <leader>ne :CocCommand explorer<CR>
nnoremap <leader>nf :CocCommand explorer --preset floating<CR>
nnoremap <leader>nt :NvimTreeOpen<CR>


nmap <leader>s <plug>(easymotion-s2)

nmap <Leader>c  <space><plug>NERDComment Comment)
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>d :bd<CR>
nmap <Leader>t :terminal<CR>
 
"Powerline config
set laststatus=2

"NOTE: OverWritting the Semshi Plugin

function MyCustomHighligh()
  "hi semshiLocal ctermfg=0 guifg=#EE6D85
  hi semshiGlobal ctermfg=0 guifg=#7aa2f7
  "hi semshiGlobal ctermfg=0 guifg=#D7A65F
"#c17c59
"#ffb74d
  hi semshiImported ctermfg=0 guifg=#ff9e64 cterm=none gui=none
  "hi semshiImported ctermfg=0 guifg=#F6955B cterm=none gui=none
  
  "hi semshiParameter ctermfg=1 guifg=#EE6D85

  hi semshiFree ctermfg=1 guifg=#EE6D85
  hi semshiBuiltin ctermfg=1 guifg=#EE6D85
  "hi semshiAttribute ctermfg=1 guifg=#EE6D85
  hi semshiSelf ctermfg=1 guifg=#e0af68
  "hi semshiUnresolved ctermfg=1 guifg=#ff5370 cterm=bold gui=bold
  hi semshiUnresolved ctermfg=1 guifg=#ff5370 cterm=none gui=none

  hi semshiSelected ctermfg=1 guifg=#444267 ctermbg=1 guibg=1

  "hi semshiErrorSign ctermfg=1 guifg=#db4a4a ctermbg=1 guibg=1 
  hi semshiErrorChar ctermfg=1 guifg=#a54046 ctermbg=1 guibg=1

endfunction
"autocmd Filetype python call MyCustomHighligh()

"NOTE: Coc-Explorer Settings 

let g:coc_explorer_global_presets = {
\   '.vim': {
\     'root-uri': '~/.vim',
\   },
\   'cocConfig': {
\      'root-uri': '~/.config/coc',
\   },
\   'tab': {
\     'position': 'tab',
\     'quit-on-open': v:true,
\   },
\   'tab:$': {
\     'position': 'tab:$',
\     'quit-on-open': v:true,
\   },
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingTop': {
\     'position': 'floating',
\     'floating-position': 'center-top',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingLeftside': {
\     'position': 'floating',
\     'floating-position': 'left-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingRightside': {
\     'position': 'floating',
\     'floating-position': 'right-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'simplify': {
\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   },
\   'buffer': {
\     'sources': [{'name': 'buffer', 'expand': v:true}]
\   },
\ }

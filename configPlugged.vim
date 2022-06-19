" Themes
"Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'ayu-theme/ayu-vim'
"Plug 'morhetz/gruvbox'

" Statusline Plug
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Better comments
Plug 'nvim-lua/plenary.nvim'
Plug 'folke/todo-comments.nvim'

"Add icons 
Plug 'ryanoasis/vim-devicons'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'

" Color syntax
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Autocomplete

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Navegation
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
"
" Identation

Plug 'Yggdroot/indentLine'

call plug#end()

" The theme config 

set termguicolors
let ayucolor="dark"
colorscheme ayu 

"let g:gruvbox_contrast_dark='hard'
"let g:gruvbox_italic = 0
"colorscheme gruvbox

"let g:tokyonight_style = "night"
"colorscheme tokyonight

" Telescope Config

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Airline config

let g:airline_theme="ayu_dark"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

set encoding=UTF-8

"NOTE: Themes
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
"Plug 'ayu-theme/ayu-vim'
""Plug 'morhetz/gruvbox'
"Plug 'marko-cerovac/material.nvim'
"Plug 'navarasu/onedark.nvim'
"Plug 'EdenEast/nightfox.nvim'

"NOTE: Statusline Plug
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'


"NOTE: Better comments
Plug 'nvim-lua/plenary.nvim'
Plug 'folke/todo-comments.nvim'

"NOTE: Add icons 
Plug 'ryanoasis/vim-devicons'

"NOTE: IDE
Plug 'easymotion/vim-easymotion'
Plug 'christoomey/vim-tmux-navigator'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'

"NOTE: Color syntax
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }

"NOTE: Autocomplete

Plug 'neoclide/coc.nvim', {'branch': 'release'}

"NOTE: Navegation

Plug 'kyazdani42/nvim-tree.lua'
"Plug 'scrooloose/nerdtree'
Plug 'nvim-lua/plenary.nvim'
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'
Plug 'nvim-telescope/telescope.nvim'

"NOTE: Identation

Plug 'Yggdroot/indentLine'

"NOTE: Buffer 

Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }

"NOTE: Git Plugins

Plug 'lewis6991/gitsigns.nvim'

call plug#end()

"NOTE: The theme config 

set termguicolors

"TODO: Nighfox theme config

"colorscheme nightfox


"TODO: Ayu theme config
"let ayucolor="dark"
"colorscheme ayu 


"TODO: material theme config
"let g:material_style="deep ocean"
"let g:material_style="dark"
"colorscheme material

"TODO: gruvbox theme config
"let g:gruvbox_contrast_dark='hard'
"let g:gruvbox_italic = 0
"colorscheme gruvbox

"TODO: tokyonight theme config
let g:tokyonight_style = "night"
let g:tokyonight_italic_functions = 1
let g:tokyonight_italic_keywords = 1
let g:tokyonight_italic_variables =1 

let g:tokyonight_sidebars = ["qf", "vista_kind", "terminal", "packer"]

let g:tokyonight_colors = {
      \ 'hint': 'orange',
      \ 'error': '#ff0000'
      \}

colorscheme tokyonight

"TODO: onedark theme config
"let g:onedark_config = {
      "\'style': 'darker',
      "\}
"colorscheme onedark

"NOTE: Coc Config

inoremap <expr> <enter> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

"NOTE: Nvim-Tree.lua config 





"NOTE: Telescope Config
nnoremap <Leader>ff <cmd>Telescope find_files<cr>
nnoremap <Leader>fg <cmd>Telescope live_grep<cr>
nnoremap <Leader>fb <cmd>Telescope buffers<cr>
nnoremap <Leader>fh <cmd>Telescope help_tags<cr>

"FzF Config
"nnoremap <leader>ff <cmd>:Files<cr>
"nnoremap <leader>fg <cmd>:GFiles<cr>
"nnoremap <leader>fb <cmd>Telescope buffers<cr>
"nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"NOTE: Airline config

"let g:airline_theme="base16_gruvbox_dark_hard"
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#formatter = 'default'

"set encoding=UTF-8

"NOTE: Buffer config

nnoremap <silent>[b :BufferLineCycleNext<CR>
nnoremap <silent>b] :BufferLineCyclePrev<CR>

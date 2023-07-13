
-- disable netrw at the very start of your init.luaa (strongy advised)
vim.g.loaded_netrw=1
vim.g.loaded_netrwPlugin=1
-- set termguicolors to enable highlight groupds
vim.g.termguicolors= true



--require("nvim-tree").setup()
require("nvim-tree").setup({
view ={
    float ={
	enable = true,
	open_win_config ={
	    relative = "editor",
	    border = "rounded",
	    width = 30,
	    height = 50,
	    row = 1,
	    col = 1,
	}
    }
}})

--require("nvim-tree").setup({
  --sort_by = "case_sensitive",
  --view = {
    --adaptive_size = true,
    --mappings = {
      --list = {
	--{ key = "u", action = "dir_up" },
      --},
    --},
  --},
  --renderer = {
    --group_empty = true,
  --},
  --filters = {
    --dotfiles = true,
  --},
--})

--NOTE: Lua tree Open at startup

--local function open_nvim_tree()

  ---- open the tree
  --require("nvim-tree.api").tree.open()
--end
--WARNING: 

local function open_nvim_tree(data)

  -- buffer is a directory
  local directory = vim.fn.isdirectory(data.file) == 1

  if not directory then
    return
  end

  -- change to the directory
  vim.cmd.cd(data.file)

  -- open the tree
  require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({"VimEnter"},  {callback = open_nvim_tree})

----------- highlight syntax config

--require'nvim-treesitter.configs'.setup {
 ----  A list of parser names, or "all"
  --ensure_installed = { "c", "lua", "rust" },

  ---- Install parsers synchronously (only applied to `ensure_installed`)
  --sync_install = false,

  ------ List of parsers to ignore installing (for "all")
  --ignore_install = { "javascript" },

  --highlight = {
    ---- `false` will disable the whole extension
    --enable = true,

    ------ NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    ------ disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    ------ the name of the parser)
    ------ list of language that will be disabled
    --disable = { "c", "rust" },

    ------ Setting this to true will run `:h syntax` and tree-sitter at the same time.
    ------ Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    ------ Using this option may slow down your editor, and you may see some duplicate highlights.
    ------ Instead of true it can also be a list of languages
    --additional_vim_regex_highlighting = false,
  --},
--}

require'nvim-treesitter.configs'.setup {
 highlight = {
    enable = true,
    ---- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    ---- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    ---- Using this option may slow down your editor, and you may see some duplicate highlights.
    ---- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = true,
    --vim.api.nvim_set_hl(0,"@variable.python", { link = "var" }),

    --vim.api.nvim_set_hl(0,"@include.python", { link = "special" }),
    --vim.api.nvim_set_hl(0,"@label.python", { link = "special" })
  },
}

--local icons = {
   --["vim"] = {
    --icon = "",
    --color = "#019833",
    --cterm_color = "29",
    --name = "Vim",
  --}
--}

require("nvim-web-devicons").set_icon {
  txt= {
    icon = " ",
    color = "#89e051",
    cterm_color = "113",
    name = "Txt",
  },

}

--TODO: Kanagawa theme config

--vim.cmd("colorscheme kanagawa-wave")

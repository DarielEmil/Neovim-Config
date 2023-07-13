
packer = require 'packer'
return require('packer').startup(function(use)
  -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'glepnir/dashboard-nvim'
    --use "rebelot/kanagawa.nvim"
end)


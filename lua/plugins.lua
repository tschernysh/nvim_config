local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer sucks")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'MunifTanjim/prettier.nvim'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use {
    "L3MON4D3/LuaSnip",
    requires = { "rafamadriz/friendly-snippets" },
  }
  use { 'saadparwaiz1/cmp_luasnip' }
  use 'kyazdani42/nvim-web-devicons'
  use { 'glepnir/lspsaga.nvim', commit = 'b7b4777' }
  use 'hoob3rt/lualine.nvim'
  use 'onsails/lspkind-nvim'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'akinsho/nvim-bufferline.lua'
  use 'norcalli/nvim-colorizer.lua'

  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim'
  use 'b3nj5m1n/kommentary'
  use 'mg979/vim-visual-multi'
  use 'tpope/vim-vinegar' -- For easier netrw navigation
end)

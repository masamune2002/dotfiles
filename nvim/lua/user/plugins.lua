local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath 'data' .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path,
  }
  print 'Installing packer close and reopen Neovim...'
  vim.cmd [[packadd packer.nvim]] end -- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require('packer.util').float { border = 'rounded' }
    end,
  },
}
-- Install plugins
return packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- Have packer manage itself
  use 'christoomey/vim-system-copy'              -- copy from vim to outside vim
  use 'mbbill/undotree'
  use 'mhartington/formatter.nvim'                -- text formatting
  use 'mhinz/vim-startify'                       -- start screen
  use 'nvim-lua/plenary.nvim' -- Useful lua functions used by lots of plugins
  use 'nvim-lua/popup.nvim' -- An implementation of the Popup API from vim in Neovim
  use 'pangloss/vim-javascript'                   -- javascript language server and utilities
  use 'ryanoasis/vim-devicons'
  use 'scrooloose/nerdtree'                      --file explorer
  use 'tpope/vim-commentary'                     -- commenting
  use 'tpope/vim-fugitive'                       -- git support
  use 'tpope/vim-surround'                      -- surround stuff with quotes, brackets, etc.
  use 'github/copilot.vim'
  use { 'diepm/vim-rest-console', ft = { "rest" } }
  use {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { {"nvim-lua/plenary.nvim"} }
  }
  use {
  'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup()
    end
  }

  -- Themes
  use 'navarasu/onedark.nvim'
  --use {'navarasu/onedark.nvim', config = function() vim.cmd.colorscheme("onedark") end }
--  use ('bluz71/vim-moonfly-colors', { run = 'moonfly' })
--  vim.cmd.colorscheme("moonfly")
--  use {'bluz71/vim-moonfly-colors.nvim', config = function() vim.cmd.colorscheme("moonfly") end }
  --use {'morhetz/gruvbox', config = function() vim.cmd.colorscheme("gruvbox") end }

  -- Telescope
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'

  -- LSP
  use {
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    'rafamadriz/friendly-snippets',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig'
  }

  use ({
    'https://git.sr.ht/~whynothugo/lsp_lines.nvim',
    config = function()
      require('lsp_lines').setup()
    end
  })

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)

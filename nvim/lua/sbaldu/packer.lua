-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Fuzzy file finder
  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
      requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Colorschemes
  use('joshdick/onedark.vim')		-- The best one, a classic
  use('jonathanfilip/vim-lucius')	-- Nice, it's all blue and green. A tiny bit pale
  use('sainnhe/sonokai')			-- Beautiful, great grey theme
  use('AlexvZyl/nordic.nvim') 		-- Nice but too much yellow text
  use('folke/tokyonight.nvim')		-- Nice
  use('tomasr/molokai') 			-- The colours are a bit too bright
  use('cocopon/iceberg.vim') 		-- Nice but it's a bit hard to distinguish the colours

  -- Treesitter
  use {
	'nvim-treesitter/nvim-treesitter',
	run = function()
		local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
		ts_update()
	end,
  }

  -- Plugin for quickly navigating between a small set of frequently used files
  use('theprimeagen/harpoon')

  -- Plugin for managing git from inside vim
  use('tpope/vim-fugitive')

  -- Nerdtree
  use('preservim/nerdtree')

  -- Icons for nerdtree
  use('ryanoasis/vim-devicons')

  -- Plugin for easily commenting lines
  use('tpope/vim-commentary')

  -- Vim-airline
  use('vim-airline/vim-airline')

  -- Illuminate repeated words
  use('RRethy/vim-illuminate')

  -- Plugin for bulletting lists in text files
  use('https://github.com/dkarter/bullets.vim')

  -- Autocompletion with LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {
        'williamboman/mason.nvim',
        run = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},
      {'saadparwaiz1/cmp_luasnip'},
      {'rafamadriz/friendly-snippets'},
      {'L3MON4D3/LuaSnip'},
    }
  }

end)


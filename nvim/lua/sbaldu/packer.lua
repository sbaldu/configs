-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Fuzzy file finder
  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.4', requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Colorschemes
  use('olimorris/onedarkpro.nvim')  		-- The best one, a classic
  use('jonathanfilip/vim-lucius')	-- Nice, it's all blue and green. A tiny bit pale
  use('sainnhe/sonokai')			-- Beautiful, great grey theme
  use('AlexvZyl/nordic.nvim') 		-- Nice but too much yellow text
  use('folke/tokyonight.nvim')		-- Nice
  use('tomasr/molokai') 			-- The colours are a bit too bright
  use('cocopon/iceberg.vim') 		-- Nice but it's a bit hard to distinguish the colours
  use('limadm/vim-blues')			-- Nice
  use('Mofiqul/vscode.nvim')        -- Classic vscode theme
  use('liuchengxu/space-vim-dark')
  use('romainl/Apprentice')
  -- use('crusoexia/vim-dracula')
  -- use('Mofiqul/dracula.nvim')
  use{'catppuccin/nvim', as = 'catpuccin'}
  use{'navarasu/onedark.nvim', as = 'onedark2'}
  use('gregsexton/Muon')
  use('blackbirdtheme/vim')
  use('plainfingers/black_is_the_color')
  use{'sar/extra-darkplus.nvim', as = 'darkplus'}
  use('twerth/ir_black')
  use('MultisampledNight/colorschemes')
  use('henrypoydar/vim-colors-ir-dark-gray')

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

  -- Nerdtree
  -- use('preservim/nerdtree')

  -- Icons for nerdtree
  -- use('ryanoasis/vim-devicons')

  -- Plugin for easily commenting lines
  use('tpope/vim-commentary')

  -- Vim-airline
  use('vim-airline/vim-airline')

  -- Illuminate repeated words
  -- use('RRethy/vim-illuminate')

  -- Plugin for bulletting lists in text files
  use('https://github.com/dkarter/bullets.vim')

  -- Plugin for git use inside vim
  use('jesseduffield/lazygit')
  use('tpope/vim-fugitive')

  -- github access on nvim
  use('pwntester/octo.nvim')

  -- Neoformat
  use('sbdchd/neoformat')

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

  -- github copilot
  use {'github/copilot.vim', branch = 'release' }

  -- nvim-tree
  use('nvim-tree/nvim-tree.lua')

  -- nvim-tree file icons
  use('nvim-tree/nvim-web-devicons')

  -- git worktree
  use('ThePrimeagen/git-worktree.nvim')

  -- transparency
  use('xiyaowong/transparent.nvim')

  -- calendar
  use('itchyny/calendar.vim')

end)


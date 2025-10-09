-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("lazy").setup("plugins")
-- require("lazy").setup({
--   -- Telescope + dependency
--   {
--     "nvim-telescope/telescope.nvim",
--     dependencies = { "nvim-lua/plenary.nvim" },
--   },
--   "nvim-treesitter/nvim-treesitter",
--   "theprimeagen/harpoon",
--   "tpope/vim-commentary",
--   "vim-airline/vim-airline",
--   "https://github.com/dkarter/bullets.vim",
--   "jesseduffield/lazygit",
--   "tpope/vim-fugitive",
--   "pwntester/octo.nvim",
--   "sbdchd/neoformat",
--   {
--     'VonHeikemen/lsp-zero.nvim',
--     branch = 'v2.x',
--     requires = {
--       -- LSP Support
--       {'neovim/nvim-lspconfig'},
--       {
--         'williamboman/mason.nvim',
--         run = function()
--           pcall(vim.cmd, 'MasonUpdate')
--         end,
--       },
--       {'williamboman/mason-lspconfig.nvim'}, -- Optional

--       -- Autocompletion
--       {'hrsh7th/nvim-cmp'},
--       {'hrsh7th/cmp-buffer'},
--       {'hrsh7th/cmp-path'},
--       {'hrsh7th/cmp-nvim-lsp'},
--       {'hrsh7th/cmp-nvim-lua'},
--       {'saadparwaiz1/cmp_luasnip'},
--       {'rafamadriz/friendly-snippets'},
--       {'L3MON4D3/LuaSnip'},
--     }
--   },
--   {
--     "nvim-tree/nvim-tree.lua",
--     dependencies = {
--       "nvim-tree/nvim-web-devicons",
--     },
--     config = function()
--       require("nvim-tree").setup {}
--     end,
--   },
--   "nvim-tree/nvim-web-devicons",
--   "ThePrimeagen/git-worktree.nvim",
--   "xiyaowong/transparent.nvim",
--   "itchyny/calendar.vim",
-- })


return {
  -- Mason manages external tools like clangd
  {
    "williamboman/mason.nvim",
    config = true,
  },

  -- Mason extension to automatically configure lspconfig
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = true,
  },

  -- Main LSP plugin
  {
	  "neovim/nvim-lspconfig",
	  config = function()
	  vim.lsp.config("clangd", {
		cmd = { "clangd", "--background-index", "--clang-tidy" },
		filetypes = { "c", "cpp", "cuda" },
	  })

	  vim.lsp.enable("clangd")

      -- Keymaps for LSP actions
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
      vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "List references" })
      vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover docs" })
    end,
  },

  -- autocompletion dependencies
  {
	'hrsh7th/nvim-cmp'
  },
  {
	'hrsh7th/cmp-buffer'
  },
  {
	'hrsh7th/cmp-path'
  },
  {
	'hrsh7th/cmp-nvim-lsp'
  },
  {
	'hrsh7th/cmp-nvim-lua'
  },
  {
	'saadparwaiz1/cmp_luasnip'
  },
  {
	'rafamadriz/friendly-snippets'
  },
  {
	'L3MON4D3/LuaSnip'
  },

}

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
	  local capabilities = require("cmp_nvim_lsp").default_capabilities()

	  vim.lsp.config["clangd"] = {
		cmd = { "clangd", "--background-index", "--clang-tidy" },
		capabilities = capabilities,
		filetypes = { "c", "cpp", "cuda" },
		root_dir = vim.fs.root(0, { "compile_commands.json", ".git", "CMakeLists.txt" }),
	  }

	  vim.lsp.start(vim.lsp.config["clangd"])

	  -- LSP keymaps
	  vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
	  vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
	  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
	  vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "List references" })
	  vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover docs" })

	  vim.api.nvim_create_autocmd("CursorHold", {
		callback = function()
		  vim.diagnostic.open_float(nil, {
			focus = false,
			scope = "cursor",
			border = "rounded",
			source = "always",
			prefix = "",
		  })
		end,
	})
	end,
  },


  -- Autocompletion
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-nvim-lua",
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
      "L3MON4D3/LuaSnip",
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
        }, {
          { name = "buffer" },
          { name = "path" },
        }),
      })
    end,
  },
}

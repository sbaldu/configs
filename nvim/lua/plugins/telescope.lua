return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.3",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
	  pickers = {
		  colorscheme = {
			  enable_preview = true,
		  },
	  },
  },

  config = function()
	require("telescope").setup({
	  pickers = {
		  colorscheme = {
			  enable_preview = true,
		  },
	  },
	})
	-- local gwkt = require('telescope').extensions.git_worktree
	-- local builtin = require('telescope.builtin')

	-- File finder
	local builtin = require('telescope.builtin')
	vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
	vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
	vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
	vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
	vim.keymap.set("n", "<leader>ut", "<cmd>Telescope colorscheme<cr>", { desc = "Pick colorscheme" })
	vim.keymap.set("n", "<leader>fz", "<cmd>Telescope git_status<cr>", { desc = "Find string under cursor in cwd" })
	vim.keymap.set("n", "<leader>fc", "<cmd>Telescope git commits<cr>", { desc = "Find todos" })

	-- worktrees
	-- vim.keymap.set('n', '<leader>fw', gwkt.git_worktrees, {})
	-- vim.keymap.set('n', '<leader>fc', gwkt.create_git_worktree, {})
  end,
}

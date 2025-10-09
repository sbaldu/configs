return {
  "nvim-telescope/telescope.nvim",
  requires = { "nvim-lua/plenary.nvim" },
  config = function()
	require("telescope").setup()
	-- local gwkt = require('telescope').extensions.git_worktree
	-- local builtin = require('telescope.builtin')

	local keymap = vim.keymap

	-- File finder
	keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
	keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Fuzzy find recent files" })
	keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find string in cwd" })
	keymap.set("n", "<leader>fs", "<cmd>Telescope git_status<cr>", { desc = "Find string under cursor in cwd" })
	keymap.set("n", "<leader>fc", "<cmd>Telescope git commits<cr>", { desc = "Find todos" })

	-- worktrees
	-- vim.keymap.set('n', '<leader>fw', gwkt.git_worktrees, {})
	-- vim.keymap.set('n', '<leader>fc', gwkt.create_git_worktree, {})
  end,
}

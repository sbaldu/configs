return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup({
	   sort_by = "case_sensitive",
		 view = {
	   	   width = 30,
	   	 },
	   	 renderer = {
	   	   group_empty = true,
	   	 },
	   	 filters = {
	   	   dotfiles = false,
	   	 },
	   })
	   vim.opt.termguicolors = true
       vim.g.loaded_netrw = 0
       vim.g.loaded_netrwPlugin = 0

	   vim.keymap.set("n", "<leader>t", ":NvimTreeToggle<cr>")
    end,
}

-- -- disable netrw at the very start of your init.lua

-- -- set termguicolors to enable highlight groups

-- -- empty setup using defaults
-- require("nvim-tree").setup()

-- -- OR setup with some options
-- require("nvim-tree").setup()

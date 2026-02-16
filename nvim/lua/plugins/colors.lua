local themes = {
	-- {
	-- 	"sainnhe/sonokai",
	-- 	lazy = false,
	-- 	priority = 2,
	-- 	config = function()
	-- 		vim.g.sonokai_enable_italic = true
	-- 		vim.cmd.colorscheme("sonokai")
	-- 	end,
	-- },
	-- {
	-- 	"catppuccin/nvim",
	-- 	name = "catppuccin",
	-- 	priority = 1,
	-- },
	-- {
	-- 	"blazkowolf/gruber-darker.nvim",
	-- 	lazy = false,
	-- 	priority = 2,
	-- 	opts = {
	-- 		bold = true,
	-- 		invert = {
	-- 			signs = false,
	-- 			tabline = false,
	-- 			visual = false,
	-- 		},
	-- 		italic = {
	-- 			strings = true,
	-- 			comments = true,
	-- 			operators = false,
	-- 			folds = true,
	-- 		},
	-- 		undercurl = true,
	-- 		underline = true,
	-- 	},
	-- },
	-- {
	-- 	"marko-cerovac/material.nvim",
	-- 	config = function()
	-- 		require("material").setup({})
	-- 		vim.cmd.colorscheme("material")
	-- 	end,
	-- },
	-- {
	-- 	"scottmckendry/cyberdream.nvim",
	-- 	lazy = false,
	-- 	priority = 3,
	-- },
	-- {
	-- 	"mhartington/oceanic-next",
	-- },
	-- {
	-- 	"uloco/bluloco.nvim",
	-- 	lazy = false,
	-- 	priority = 5,
	-- 	dependencies = { "rktjmp/lush.nvim" },
	-- 	config = function()
	-- 		-- your optional config goes here, see below.
	-- 	end,
	-- },
	{
		"xeind/nightingale.nvim",
		lazy = false,
		priority = 100,
		config = function()
			require("nightingale").setup({
				transparent = true,
			})
			vim.cmd("colorscheme nightingale")
		end,
	},
	-- {
	-- 	"DonJulve/NeoCyberVim",
	-- },
	{
		"Mofiqul/vscode.nvim",
		priority = 1,
	},
	-- {
	-- 	"shaunsingh/nord.nvim",
	-- },
	-- {
	-- 	"tiagovla/tokyodark.nvim",
	-- 	lazy = false,
	-- 	priority = 10,
	-- 	opts = {
	-- 		-- custom options here
	-- 	},
	-- 	config = function(_, opts)
	-- 		require("tokyodark").setup(opts) -- calling setup is optional
	-- 		vim.cmd([[colorscheme tokyodark]])
	-- 	end,
	-- },
}

-- Switch between installed themes
local theme_names = {
	"material",
	"bluloco",
	"cyberdream",
	"gruber-darker",
	"sonokai",
	"nightingale",
	"NeoCyberVim",
	"vscode",
	"nord",
	"tokyodark",
}
local current = 1

function SwitchColorscheme()
	current = current % #theme_names + 1
	local theme = theme_names[current]
	print(theme)
	vim.cmd.colorscheme(theme)
	vim.defer_fn(function()
		vim.notify("Switched to " .. theme, vim.log.levels.INFO, { title = "Colorscheme" })
	end, 50)
end

vim.api.nvim_create_user_command("SwitchTheme", SwitchColorscheme, {})
vim.keymap.set("n", "<leader>cs", SwitchColorscheme, { desc = "Switch colorscheme" })

-- Return the plugin specs so Lazy can load them
return themes

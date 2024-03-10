
function Color(c)
	-- color = color or "onedark"
	c = c or "vscode"
	vim.cmd.colorscheme(c)

	vim.opt.termguicolors = true
	-- If you want the background to be transparent
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none' })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none' })
end

Color()

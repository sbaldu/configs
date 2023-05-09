
function SetColors(color)
	color = color or "onedark"
	vim.cmd.colorscheme(color)

	vim.opt.termguicolors = true
	-- If you want the background to be transparent
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none' })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none' })
end

SetColors()

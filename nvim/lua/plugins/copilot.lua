return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      panel = { enabled = true },
      suggestion = {
        enabled = true,
        auto_trigger = true,
      },
      filetypes = {
        ["*"] = true,  -- enable for all
        cpp = true,    -- explicitly enable for cpp
        c = true,
        h = true,
        hpp = true,
      },
	  keymap = {
		accept = false,
	  },
    })
	-- Manual accept mapping
	vim.keymap.set("i", "<C-l>", function()
	  local ok, suggestion = pcall(require, "copilot.suggestion")
	  if ok and suggestion.is_visible() then
		suggestion.accept()
	  else
		vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-l>", true, false, true), "n", true)
	  end
	end, { expr = false, silent = true, desc = "Accept Copilot suggestion" })
  end,
}


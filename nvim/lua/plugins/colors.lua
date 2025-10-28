local themes = {
  {
    'sainnhe/sonokai',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.sonokai_enable_italic = true
      vim.cmd.colorscheme('sonokai')
    end,
  },
  {
    "blazkowolf/gruber-darker.nvim",
    opts = {
      bold = true,
      invert = {
        signs = false,
        tabline = false,
        visual = false,
      },
      italic = {
        strings = true,
        comments = true,
        operators = false,
        folds = true,
      },
      undercurl = true,
      underline = true,
    },
  },
  {
	'marko-cerovac/material.nvim'
  },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
  },
  {
	'mhartington/oceanic-next'
  },
  {
	'uloco/bluloco.nvim',
	lazy = false,
	priority = 1000,
	dependencies = { 'rktjmp/lush.nvim' },
	config = function()
	  -- your optional config goes here, see below.
	end,
  },
  {
	"xeind/nightingale.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("nightingale").setup({
			transparent = true,
		})
		vim.cmd("colorscheme nightingale")
	end,
  },
  { 
	'DonJulve/NeoCyberVim'
  },
  {
    "Skalyaev/a-nvim-theme",
    priority = 42,

    config = function()
        vim.cmd([[colorscheme neon]])
    end
  },
  {
	'Mofiqul/vscode.nvim'
  },
  {
	'shaunsingh/nord.nvim'
  },
  {
    "tiagovla/tokyodark.nvim",
    opts = {
        -- custom options here
    },
    config = function(_, opts)
        require("tokyodark").setup(opts) -- calling setup is optional
        vim.cmd [[colorscheme tokyodark]]
    end,
  },
}

-- Switch between installed themes
local theme_names = { "sonokai",
					  "gruber-darker",
					  "material",
					  "cyberdream",
					  "bluloco",
					  "nightingale",
					  "NeoCyberVim",
					  "vscode",
					  "nord",
					  "tokyodark"
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


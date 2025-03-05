
local gwkt = require('telescope').extensions.git_worktree
local builtin = require('telescope.builtin')

-- File finder
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- Grep
vim.keymap.set('n', '<leader>fs', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ")});
end)
-- worktrees
vim.keymap.set('n', '<leader>fw', gwkt.git_worktrees, {})
vim.keymap.set('n', '<leader>fc', gwkt.create_git_worktree, {})
--vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
--vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
--vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

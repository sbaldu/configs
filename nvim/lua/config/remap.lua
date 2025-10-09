
vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>es", vim.cmd.Ex)
vim.keymap.set("n", "<leader>es", ":q<CR>")
vim.keymap.set("n", "<", "<<")
vim.keymap.set("n", ">", ">>")

-- keybindings for moving between windows
vim.keymap.set("n", "<leader>a", "<C-w>h")
vim.keymap.set("n", "<leader>d", "<C-w>l")
vim.keymap.set("n", "<leader>s", "<C-w>j")
vim.keymap.set("n", "<leader>w", "<C-w>k")

-- clang-format
vim.keymap.set("n", "<leader>cg", ":%!clang-format<CR>")
vim.keymap.set("n", "<leader>cf", ":%!cmake-format<CR>")

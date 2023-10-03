
require("sbaldu.remap")
require("sbaldu.set")

require("sbaldu.packer")

-- Defines a read-write directory for treesitters in nvim's cache dir
local parser_install_dir = vim.fn.stdpath("cache") .. "/treesitters"
vim.fn.mkdir(parser_install_dir, "p")

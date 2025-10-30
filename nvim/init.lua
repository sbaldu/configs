
require("config.lazy")
require("config.remap")
require("config.set")

if not vim.fs.path_expand then
  vim.fs.path_expand = function(path)
    return vim.fn.expand(path)
  end
end


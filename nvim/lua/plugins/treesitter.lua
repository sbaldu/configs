
-- return {
--   "nvim-treesitter/nvim-treesitter",
--   build = ":TSUpdate",
--   config = function()
--     require("nvim-treesitter.configs").setup({
--       ensure_installed = { "c", "cpp", "lua", "python" },
--       sync_install = false,
--       auto_install = true,
--       highlight = { enable = true },
--     })
--   end,
-- }
return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag",
    },
    config = function()
        local treesitter = require("nvim-treesitter.configs")

        treesitter.setup({
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            indent = { enable = true },
            auto_install = false,
            sync_install = false,
            autotag = {
                enable = true,
            },
            ensure_installed = {
                "json",
                "yaml",
                "markdown",
                "markdown_inline",
                "bash",
                "lua",
                "vim",
                "dockerfile",
                "gitignore",
                "c",
                "cpp",
                "cmake",
                "cuda",
                "rust",
                "comment",
                "query"
            },
            textobjects = {
              select = {
                enable = true,
                lookahead = true,
                keymaps = {
                  ["af"] = "@function.outer",
                  ["if"] = "@function.inner",
                  ["ac"] = "@class.outer",
                  ["ic"] = "@class.inner",
                  ["aa"] = "@parameter.outer",
                  ["ia"] = "@parameter.inner",
                },
              },
            },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<C-space>",
                    node_incremental = "<C-space>",
                    scope_incremental = false,
                    node_decremental = "<bs>",
                },
            },
        })
    end,
}


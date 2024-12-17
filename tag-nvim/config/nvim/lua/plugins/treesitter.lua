-- Customize Treesitter

-- 语法高亮、代码折叠
---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      -- "lua",
      -- "vim",
    },
  },
}

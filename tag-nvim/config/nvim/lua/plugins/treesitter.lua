-- Customize Treesitter

-- 语法高亮、代码折叠
---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "html", -- HTML 支持
      "css", -- CSS 支持
      "javascript", -- JavaScript 支持
      "typescript", -- TypeScript 支持
      "json", -- JSON 支持
      "scss", -- SCSS 支持
      "jsonc", -- JSONC 支持（带注释的 JSON）
      "markdown", -- Markdown 支持
      "tsx", -- TSX (TypeScript + JSX) 支持
      "jsx", -- JSX 支持
    },
  },
}

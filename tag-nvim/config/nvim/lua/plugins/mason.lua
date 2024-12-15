-- Customize Mason plugins
---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  -- 用来简化lsp配置
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "lua_ls",
        "html",
        "cssls",
        "ts_ls",
        -- add more arguments for adding more language servers
      },
    },
  },

  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  -- 用于格式化代码
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = {
        -- formatter
        "stylua",
        "prettier",
        -- linter
        "eslint_d",
        "markuplint",
        "selene",
        "stylelint",
        -- add more arguments for adding more null-ls sources
      },
    },
  },
  {
    -- 用于调试
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = {
        -- "python",
        -- add more arguments for adding more debuggers
      },
    },
  },
}

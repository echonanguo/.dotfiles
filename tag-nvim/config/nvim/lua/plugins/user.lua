-- 管理配置少的插件
return {
  -- jk退出插入模式
  { "max397574/better-escape.nvim", enabled = true },
  -- html-css-js预览
  {
    "turbio/bracey.vim", -- 插件名称
    ft = { "html" }, -- 只在 HTML 文件类型时加载
    cmd = { "Bracey", "BraceyStop", "BraceyReload" }, -- 提供的命令
    config = function()
      -- 插件的配置代码（可选）
      vim.g.bracey_auto_start = 1 -- 自动启动 Bracey
    end,
  },
}

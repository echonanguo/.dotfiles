local opt = vim.opt

-- 行号
opt.relativenumber = true
opt.number = true

-- 缩进
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- 防止包裹
opt.wrap = false

-- 光标行
opt.cursorline = true

-- 系统剪贴板
opt.clipboard:append("unnamedplus")

-- 默认新窗口右和下
opt.splitright = true
opt.splitbelow = true

-- 搜索
opt.ignorecase = true
opt.smartcase = true

-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"

-- 使用基于缩进的折叠
opt.foldmethod = "indent"



-- 启用 viminfo 功能以保存和恢复光标位置
opt.viminfo:append("'100") -- 保存最近 100 个文件的光标位置
opt.viminfo:append("n")    -- 保存标记
opt.viminfo:append("f")    -- 保存文件名
opt.viminfo:append("s")    -- 保存搜索历史
-- 自动恢复光标位置
vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    local line = vim.fn.line("'\"")
    if line > 0 and line <= vim.fn.line("$") then
      vim.cmd("normal! g`\"")
    end
  end
})

-- 设置背景颜色为深色（dark）或浅色（light），根据你的偏好
vim.o.background = "dark"

-- 应用gruvbox配色方案
vim.cmd("colorscheme gruvbox")

-- 如果你想让其他背景也变成透明，比如浮动窗口等，可以添加以下配置
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })


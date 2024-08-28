
vim.g.mapleader = ";"

local keymap = vim.keymap

-- ---------- 插入模式 ---------- ---
keymap.set("i", "jk", "<ESC>")

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ---------- 正常模式 ---------- ---
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口 
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- buffer
keymap.set("n", "<leader>l", ":bnext<CR>")
keymap.set("n", "<leader>h", ":bprevious<CR>")
keymap.set("n", "<leader>ts", ":BufferLineCloseOthers<CR>")

-- 开发
keymap.set("n","<Leader>r",":!~/.scripts/run.sh %<CR>")
keymap.set("n","<Leader>e",":!~/.scripts/execute.sh %<CR>")
keymap.set("n","<Leader>c",":!~/.scripts/compile.sh %<CR>")


-- 取消 LSP 默认的 K 映射
keymap.set('n', 'K', '')

-- 将 LSP 悬停功能映射到 F
keymap.set('n', 'F', vim.lsp.buf.hover, { noremap = true, silent = true })

-- Shift + HJKL 快速移动光标
vim.api.nvim_set_keymap('n', '<S-H>', '5h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-J>', '5j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-K>', '5k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-L>', '5l', { noremap = true, silent = true })

-- ---------- 插件 ---------- ---

-- nvim-tree
keymap.set("n", "<leader>g", ":NvimTreeToggle<CR>")

-- Telescope
local builtin = require('telescope.builtin')
keymap.set('n', '<leader>ff', builtin.find_files, {})  -- 查找文件
keymap.set('n', '<leader>fg', builtin.live_grep, {})  -- 全局查找
keymap.set('n', '<leader>fb', builtin.buffers, {})  -- 查找打开的 buffer
keymap.set('n', '<leader>fh', builtin.help_tags, {})  -- 查找 help 标签


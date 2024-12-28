-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.colorscheme.gruvbox-nvim" }, --主题
  { import = "astrocommunity.pack.lua" }, -- lua 开发包
  { import = "astrocommunity.pack.html-css" }, -- html-css 开发包
  { import = "astrocommunity.pack.cpp" }, -- cpp 开发包
  { import = "astrocommunity.pack.java" }, -- java开发包
  { import = "astrocommunity.pack.python" }, -- python开发包
  { import = "astrocommunity.pack.typescript" }, -- typescript开发包
  -- import/override with your plugins folder
}

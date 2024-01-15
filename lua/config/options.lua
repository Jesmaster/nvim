-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

opt.hlsearch = true
opt.is = true
opt.softtabstop = 4
opt.shiftwidth = 4

vim.lsp.set_log_level("off")

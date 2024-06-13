-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- enable 24-bit colour
vim.opt.termguicolors = true
-- custom config
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

-- load keymaps
require('config.keymap')

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- plugins
local tree = require('plugins.tree')
local theme = require('plugins.theme')
local lsp = require('plugins.lsp')
local plugins = { tree, theme, lsp }

require("lazy").setup(plugins, opts)
require("lazy").install()
require('mason').setup()

-- theme
vim.cmd('colorscheme kanagawa')

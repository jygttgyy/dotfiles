vim.g.mapleader = ","
require("config.lazy")
nvim_lspconfig = require("lspconfig")
nvim_lspconfig.ts_ls.setup{}
nvim_lspconfig.rust_analyzer.setup{}
nvim_lspconfig.glsl_analyzer.setup{}
--require'lspconfig'.html.setup{}
--vim.cmd 'colorscheme habamax'
vim.o.number = true
vim.o.relativenumber = true
vim.o.termguicolors = true
vim.o.background = 'dark'
vim.o.emoji = false

-- Indentation
vim.o.wrap = false
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

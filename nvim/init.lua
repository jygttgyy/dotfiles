vim.g.mapleader = " "
vim.g.lazyvim_check_order = false
require("config.options")
require("config.keymaps")
require("config.lazy")

vim.diagnostic.config({
  virtual_text = true,
  update_in_insert = true
})







local lsp_dir = vim.fn.stdpath("config") .. "/lua/lsp"
local files = vim.fn.readdir(lsp_dir)

for _, file in ipairs(files) do
  if file:match("%.lua$") then
    -- Strip ".lua" and load as: require("lsp.filename")
    local module = file:gsub("%.lua$", "")
    require("lsp." .. module)
  end
end


--require'lspconfig'.html.setup{}
--vim.cmd 'colorscheme habamax'
--[[vim.o.number = true
vim.o.relativenumber = true
vim.o.termguicolors = true
vim.o.background = 'dark'
vim.o.emoji = true

--Autocomplete
vim.o.completeopt = "fuzzy,menuone,noselect,popup"
-- :::
-- Indentation
vim.o.wrap = false
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4]]

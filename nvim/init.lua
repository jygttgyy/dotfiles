vim.g.mapleader = ","
require("config.lazy")
vim.diagnostic.config({
  virtual_text = true,
  update_in_insert = true
})
vim.lsp.config['lua_ls'] = {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      },
      telemetry = { enable = false },
      diagnostics = {
          globals = { "vim" },
      },
    }
  }
}
vim.lsp.config["ts_ls"] = {

}

vim.lsp.config["rust_analyzer"] = {

}
vim.lsp.config["glsl_analyzer"] = {

}

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

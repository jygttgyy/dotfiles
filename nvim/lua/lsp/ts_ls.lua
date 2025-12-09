vim.lsp.config["ts_ls"] = {
  cmd = { "typescript-language-server", "--stdio" },
  filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
  root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },
}
vim.lsp.enable('ts_ls')

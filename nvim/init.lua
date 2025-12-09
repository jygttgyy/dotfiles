vim.g.mapleader = " "
vim.g.lazyvim_check_order = false
require("config.lazy")
require("config.options")
require("config.keymaps")

vim.diagnostic.config({
  virtual_text = true,
  update_in_insert = true
})

--[[vim.lsp.config['lua_ls'] = {
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
vim.lsp.enable('lua_ls')
vim.lsp.config["ts_ls"] = {
  cmd = { "typescript-language-server", "--stdio" },
  filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
  root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },
}

vim.lsp.config["rust_analyzer"] = {
    capabilities = {
        experimental = {
            commands = {
                commands = { "rust-analyzer.showReferences", "rust-analyzer.runSingle", "rust-analyzer.debugSingle" }
            },
            serverStatusNotification = true
        }
    },
    cmd = { "rust-analyzer" },
    filetypes = { "rust" },
    settings = {
        ["rust-analyzer"] = {
            lens = {
                debug = {
                    enable = true
                },
                enable = true,
                implementations = {
                    enable = true
                },
                references = {
                    adt = {
                        enable = true
                    },
                    enumVariant = {
                        enable = true
                    },
                    method = {
                        enable = true
                    },
                    trait = {
                        enable = true
                    }
                },
                run = {
                    enable = true
                },
                updateTest = {
                    enable = true
                }
            }
        }
    }
}
--[[
vim.lsp.config["glsl_analyzer"] = {
    cmd = {},
    filetypes = {},
    root_markers = {},
    settings = {}
}
--]]
vim.lsp.config["wgsl_analyzer"] = {
    cmd = { "wgsl_analyzer" },
    filetypes = { "wgsl" },
    root_markers = { ".git" },
    settings = {}
}--]]

--require'lspconfig'.html.setup{}
--vim.cmd 'colorscheme habamax'
vim.o.number = true
vim.o.relativenumber = true
vim.o.termguicolors = true
vim.o.background = 'dark'
vim.o.emoji = false

--Autocomplete
vim.o.completeopt = "fuzzy,menuone,noselect,popup"
-- :::
-- Indentation
vim.o.wrap = false
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

return {
  -- Mason 
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = { "lua-language-server" },
    },
  },

  -- LSPConfig 
  {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason-lspconfig.nvim" },
    config = function()
      local lspconfig = require("lspconfig")

      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            runtime = { version = "LuaJIT" },
            diagnostics = { globals = { "vim" } }, 
            workspace = {
              library = {
                vim.api.nvim_get_runtime_file("", true),
                "${3rd}/luv/library" 
              },
              maxPreload = 10000, 
              preloadFileSize = 1000,
            },
            telemetry = { enable = false },
          },
        },
      })
    end,
  },
}


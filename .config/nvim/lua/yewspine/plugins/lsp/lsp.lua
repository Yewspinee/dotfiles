return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "ts_ls" },
        automatic_installation = true,
      })

      local servers = {
        lua_ls = {},
        ts_ls = {},
      }

      for name, opts in pairs(servers) do
        lspconfig[name].setup {
          capabilities = capabilities,
          settings = opts,
        }
      end

      vim.diagnostic.config({
        float = { border = "rounded" },
      })
    end,
  },
}


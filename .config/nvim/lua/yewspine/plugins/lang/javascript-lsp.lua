return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "typescript-language-server",
        "eslint-lsp"
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason-lspconfig.nvim" },
    config = function()
      local lspconfig = require("lspconfig")

      lspconfig.ts_ls.setup({
        settings = {
          typescript = {
            inlayHints = { includeInlayParameterNameHints = "all" },
          },
          javascript = {
            inlayHints = { includeInlayParameterNameHints = "all" },
          },
        },
      })

      lspconfig.eslint.setup({
        settings = {
          codeAction = {
            disableRuleComment = { enable = true, location = "separateLine" },
            showDocumentation = { enable = true },
          },
          format = true,
        },
        on_attach = function(client, bufnr) 
          if client.server_capabilities.documentFormattingProvider then
            vim.api.nvim_create_autocmd("BufWritePre", {
              buffer = bufnr,
              command = "EslintFixAll",
            })
          end
        end,
      })
    end,
  }
}


return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "jdtls", -- Java LSP
      },
    },
  },

 
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        java = { "google_java_format" }, 
      },
    },
  },  
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "theHamsta/nvim-dap-virtual-text"
    },
    config = function()
      require("dapui").setup()
      require("nvim-dap-virtual-text").setup()

      local dap = require("dap")
      local dapui = require("dapui")

      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end,
  },

  -- LSP Java
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "mfussenegger/nvim-jdtls",
    },
    config = function()
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "java",
        callback = function()
          local jdtls = require("jdtls")
          local jdtls_setup = require("jdtls.setup")

          local root_markers = { ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }
          local root_dir = jdtls_setup.find_root(root_markers)
          if not root_dir then return end

          local workspace_dir = vim.fn.stdpath("data") .. "/jdtls-workspace/" .. vim.fn.fnamemodify(root_dir, ":p:h:t")

          -- DAP Bundle (debugging support)
          local bundles = {
            vim.fn.glob(vim.fn.stdpath("data") .. "/mason/packages/java-debug-adapter/extension/server/com.microsoft.java.debug.plugin-*.jar", 1)
          }

          jdtls.start_or_attach({
            cmd = { "jdtls" },
            root_dir = root_dir,
            workspace_folder = workspace_dir,
            settings = {
              java = {
                format = {
                  enabled = true,
                },
              },
            },
            init_options = {
              bundles = bundles,
            },
          })
        end,
      })
    end,
  },
}


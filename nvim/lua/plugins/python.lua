return {
  -- 1. Setup Python LSPs: Ruff + Pyright
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Linting, formatting, import sort
        ruff = {},
      },
      setup = {
        ruff_lsp = function(_, opts)
          local lspconfig = require("lspconfig")
          lspconfig.ruff_lsp.setup({
            on_attach = function(client, bufnr)
              -- Ruff provides diagnostics + formatting + import sorting
              client.server_capabilities.hoverProvider = false
              -- Autoformat before save
              vim.api.nvim_create_autocmd("BufWritePre", {
                buffer = bufnr,
                callback = function()
                  vim.lsp.buf.format({ async = false })
                end,
              })
            end,
            settings = opts.settings,
          })
        end,
      },
    },
  },

  -- 2. Formatter: use Ruff for Python
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "ruff_fix", "ruff_format", "ruff_organize_imports" },
      },
    },
  },
}

-- Formatter and Linter Configuration
return {
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    opts = {
      formatters_by_ft = {
        python = { "ruff_format", "ruff_fix" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        javascript = { "prettier" },
        javascriptreact = { "prettier" },
        json = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        c = { "clang_format" },
        cpp = { "clang_format" },
        lua = { "stylua" },
        go = { "goimports", "gofumpt" },
        proto = { "buf" },
      },
    },
  },
}

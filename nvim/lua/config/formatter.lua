-- Formatter Configuration
-- All formatters in one place

return {
  formatters_by_ft = {
    python = { "ruff" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    json = { "prettier" },
    html = { "prettier" },
    css = { "prettier" },
    c = { "clang_format" },
    cpp = { "clang_format" },
  },
}

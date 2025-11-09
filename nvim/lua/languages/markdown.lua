local M = {}

-- Markdown-specific LSP configuration
M.lsp = {
  marksman = {}, -- Best general-purpose Markdown LSP
}

-- Formatters for Markdown (choose one or more)
M.formatters = {
  markdown = { "prettier", "markdownlint" },
}

-- Optional tweaks for better Markdown editing visuals
M.setup_visuals = function()
  -- Enable spell checking, soft wrap, and conceal
  vim.opt_local.spell = true
  vim.opt_local.linebreak = true
  vim.opt_local.wrap = true
  vim.opt_local.conceallevel = 2
  vim.opt_local.concealcursor = "nc"

  -- Better highlighting for code blocks, tables, etc.
  vim.cmd([[
    hi! link markdownCodeBlock Normal
    hi! link markdownBold Statement
    hi! link markdownItalic PreProc
    hi! link markdownHeadingDelimiter Identifier
    hi! link markdownLinkText Underlined
  ]])

  -- Optional: use treesitter for folding
  vim.opt_local.foldmethod = "expr"
  vim.opt_local.foldexpr = "nvim_treesitter#foldexpr()"
end

-- Optional autocommand to apply the visual setup for markdown buffers
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown", "md" },
  callback = function()
    M.setup_visuals()
  end,
})

-- Custom LSP setup (if you want to override defaults)
M.lsp_setup = {
  marksman = function(_, opts)
    local lspconfig = require("lspconfig")
    lspconfig.marksman.setup({
      on_attach = opts.on_attach,
      capabilities = opts.capabilities,
    })
    return true
  end,
}

return M

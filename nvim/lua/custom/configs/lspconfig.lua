local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = {
  "html",
  "cssmodules_ls",
  "ts_ls",
  "clangd",
  "pyright",
  "marksman",
  "lua_ls",
  "svelte",
  "bashls",
  "astro",
  "tailwindcss",
  "texlab",
  "dockerls",
  "docker_compose_language_service",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    -- on_attach = on_attach,
    -- capabilities = capabilities,
  }
end

local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = {
  "html", -- vscode-html-language-server
  "cssls", -- vscode-css-language-server
  "ts_ls", -- typescript-language-server (not ts_ls)
  "clangd", -- clangd
  "pyright", -- pyright
  "marksman", -- markdown
  "lua_ls", -- lua-language-server
  "svelte", -- svelte-language-server
  "bashls", -- bash-language-server
  "astro", -- astro-language-server
  "tailwindcss", -- tailwindcss-language-server
  "texlab", -- texlab
  "dockerls", -- dockerfile-language-server
  "docker_compose_language_service", -- docker-compose-language-service
  "prismals", -- prisma-language-server
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    -- on_attach = on_attach,
    -- capabilities = capabilities,
  }
end

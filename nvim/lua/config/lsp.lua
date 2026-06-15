-- LSP Configuration - use vim.lsp.start directly
local python_root_markers = { "pyproject.toml", "setup.py", "setup.cfg", "requirements.txt", ".git" }

vim.api.nvim_create_autocmd("FileType", {
  callback = function(args)
    local ft = args.match

    local lsp_map = {
      python = {
        {
          name = "ruff",
          cmd = { "ruff", "server" },
          root_dir = vim.fs.root(args.buf, python_root_markers),
          init_options = {
            settings = {
              organizeImports = true,
              fixAll = true,
            },
          },
        },
        {
          name = "ty",
          cmd = { "ty", "server" },
          root_dir = vim.fs.root(args.buf, python_root_markers),
        },
      },
      typescript = { { name = "ts_ls", cmd = { "typescript-language-server", "--stdio" } } },
      javascript = { { name = "ts_ls", cmd = { "typescript-language-server", "--stdio" } } },
      typescriptreact = { { name = "ts_ls", cmd = { "typescript-language-server", "--stdio" } } },
      javascriptreact = { { name = "ts_ls", cmd = { "typescript-language-server", "--stdio" } } },
      cpp = { { name = "clangd", cmd = { "clangd" } } },
      c = { { name = "clangd", cmd = { "clangd" } } },
      lua = { { name = "lua_ls", cmd = { "lua-language-server" } } },
      go = {
        {
          name = "gopls",
          cmd = { "gopls" },
          root_dir = vim.fs.root(args.buf, { "go.mod", "go.work", ".git" }),
          settings = {
            gopls = {
              analyses = { unusedparams = true, shadow = true },
              staticcheck = true,
              gofumpt = true,
            },
          },
        },
      },
      proto = {
        {
          name = "buf_ls",
          cmd = { "buf", "beta", "lsp" },
          root_dir = vim.fs.root(args.buf, { "buf.yaml", "buf.work.yaml", ".git" }),
        },
      },
      yaml = { { name = "yaml_ls", cmd = { "yaml-language-server" } } },
    }

    local servers = lsp_map[ft]
    if servers then
      for _, srv in ipairs(servers) do
        vim.lsp.start(srv)
      end
    end
  end,
})

-- Enable inlay hints globally
vim.lsp.inlay_hint.enable(true)

-- Show inline errors with virtual text
vim.diagnostic.config({
  virtual_text = {
    prefix = "●",
  },
  signs = true,
  underline = true,
  update_in_insert = false,
})

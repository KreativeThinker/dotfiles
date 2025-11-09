local M = {}

-- LSP servers to enable
M.lsp = {
  lua_ls = {
    settings = {
      Lua = {
        runtime = {
          version = "LuaJIT",
          path = vim.split(package.path, ";"),
        },
        diagnostics = {
          globals = { "vim" },
        },
        workspace = {
          library = vim.api.nvim_get_runtime_file("", true),
          checkThirdParty = false,
        },
        telemetry = { enable = false },
      },
    },
  },
}

-- Custom LSP setup functions
M.lsp_setup = {
  lua_ls = function(_, opts)
    local lspconfig = require("lspconfig")

    lspconfig.lua_ls.setup({
      on_attach = opts.on_attach,
      capabilities = opts.capabilities,
      settings = opts.settings,
    })

    return true
  end,
}

-- Formatters by filetype
M.formatters = {
  lua = { "stylua" },
}

-- Debugger Configuration
M.dap_setup = function()
  local dap = require("dap")

  dap.adapters.nlua = function(callback, config)
    callback({
      type = "server",
      host = config.host or "127.0.0.1",
      port = config.port or 8086,
    })
  end

  dap.configurations.lua = {
    {
      type = "nlua",
      request = "attach",
      name = "Attach to running Neovim instance",
      host = function()
        local host = vim.fn.input("Host [127.0.0.1]: ")
        return host ~= "" and host or "127.0.0.1"
      end,
      port = function()
        local port = tonumber(vim.fn.input("Port [8086]: ")) or 8086
        return port
      end,
    },
  }
end

return M

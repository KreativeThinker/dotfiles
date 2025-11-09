local M = {}

-- Helper function to find Python in virtual environment
local function get_python_path()
  -- Check for virtual environment
  local venv_path = vim.env.VIRTUAL_ENV
  if venv_path then
    return venv_path .. "/bin/python"
  end

  -- Check for common venv directories in workspace
  local workspace_venvs = { ".venv", "venv", ".env" }
  for _, venv_name in ipairs(workspace_venvs) do
    local venv_python = vim.fn.getcwd() .. "/" .. venv_name .. "/bin/python"
    if vim.fn.executable(venv_python) == 1 then
      return venv_python
    end
  end

  -- Fallback to system python
  return vim.fn.exepath("python3") or vim.fn.exepath("python") or "python"
end

-- LSP servers to enable
M.lsp = {
  -- Pyright for type checking and completions (most reliable)
  pyright = {
    settings = {
      python = {
        analysis = {
          autoSearchPaths = true,
          diagnosticMode = "workspace",
          useLibraryCodeForTypes = true,
          typeCheckingMode = "basic",
        },
        pythonPath = get_python_path(),
      },
    },
  },

  -- Ruff LSP for linting and formatting
  ruff = {
    on_attach = function(client, bufnr)
      -- Disable hover in favor of Pyright
      client.server_capabilities.hoverProvider = false
    end,
    init_options = {
      settings = {
        args = {},
      },
    },
  },
}

-- Custom LSP setup functions
M.lsp_setup = {
  pyright = function(_, opts)
    local lspconfig = require("lspconfig")

    -- Update pythonPath dynamically
    opts.settings.python.pythonPath = get_python_path()

    lspconfig.pyright.setup({
      on_attach = opts.on_attach,
      capabilities = opts.capabilities,
      settings = opts.settings,
      on_init = function(client)
        -- Print for debugging
        vim.notify("Pyright using: " .. get_python_path(), vim.log.levels.INFO)
      end,
    })
    return true
  end,

  ruff = function(_, opts)
    local lspconfig = require("lspconfig")
    lspconfig.ruff.setup({
      on_attach = function(client, bufnr)
        -- Disable hover in favor of Pyright
        client.server_capabilities.hoverProvider = false

        if opts.on_attach then
          opts.on_attach(client, bufnr)
        end
      end,
      capabilities = opts.capabilities,
      init_options = opts.init_options,
    })
    return true
  end,
}

-- Formatters by filetype
M.formatters = {
  python = { "ruff_organize_imports", "ruff_format", "ruff_fix" },
}

-- Debugger Configuration
M.dap_setup = function()
  local dap = require("dap")

  dap.adapters.python = {
    type = "executable",
    command = get_python_path(),
    args = { "-m", "debugpy.adapter" },
  }

  dap.configurations.python = {
    {
      type = "python",
      request = "launch",
      name = "Launch File",
      program = "${file}",
      pythonPath = get_python_path(),
      console = "integratedTerminal",
    },
    {
      type = "python",
      request = "launch",
      name = "Launch App",
      program = "${workspaceFolder}/main.py",
      pythonPath = get_python_path(),
      console = "integratedTerminal",
    },
    {
      type = "python",
      request = "attach",
      name = "Attach to Process",
      pythonPath = get_python_path(),
      console = "integratedTerminal",
    },
  }
end

return M

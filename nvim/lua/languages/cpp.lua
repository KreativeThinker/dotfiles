local M = {}

-- LSP servers to enable
M.lsp = {
  clangd = {
    cmd = { "clangd", "--background-index", "--clang-tidy", "--completion-style=detailed" },
    filetypes = { "c", "cpp", "objc", "objcpp" },
    root_dir = function(fname)
      return require("lspconfig.util").root_pattern(
        "compile_commands.json",
        "compile_flags.txt",
        ".git"
      )(fname) or vim.fn.getcwd()
    end,
  },
}

-- Custom LSP setup functions
M.lsp_setup = {
  clangd = function(_, opts)
    local lspconfig = require("lspconfig")

    lspconfig.clangd.setup({
      on_attach = opts.on_attach,
      capabilities = opts.capabilities,
      cmd = opts.cmd,
      filetypes = opts.filetypes,
      root_dir = opts.root_dir,
    })

    return true
  end,
}

-- Formatters by filetype
M.formatters = {
  c = { "clang_format" },
  cpp = { "clang_format" },
}

-- Debugger Configuration
M.dap_setup = function()
  local dap = require("dap")

  dap.adapters.cppdbg = {
    id = "cppdbg",
    type = "executable",
    command = vim.fn.exepath("OpenDebugAD7"), -- Installed by `cpptools` or `mason`
  }

  dap.configurations.cpp = {
    {
      name = "Launch file (C++)",
      type = "cppdbg",
      request = "launch",
      program = function()
        return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
      end,
      cwd = "${workspaceFolder}",
      stopAtEntry = false,
      setupCommands = {
        {
          description = "Enable pretty-printing for gdb",
          text = "-enable-pretty-printing",
          ignoreFailures = false,
        },
      },
    },
  }

  -- C uses same configuration
  dap.configurations.c = dap.configurations.cpp
end

return M

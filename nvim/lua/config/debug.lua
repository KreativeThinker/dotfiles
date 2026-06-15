-- Debugger Configuration
-- All DAP adapters and configurations in one place

return {
  adapters = {
    python = {
      type = "executable",
      command = "python",
      args = { "-m", "debugpy.adapter" },
    },
    cppdbg = {
      id = "cppdbg",
      type = "executable",
      command = vim.fn.exepath("OpenDebugAD7"),
    },
    node2 = {
      type = "executable",
      command = "node",
      args = { os.getenv("HOME") .. "/.local/share/nvim/mason/packages/node-debug2-adapter/out/nodeDebug.js" },
    },
  },
  
  configurations = {
    python = {
      {
        type = "python",
        request = "launch",
        name = "Launch File",
        program = "${file}",
        console = "integratedTerminal",
      },
      {
        type = "python",
        request = "launch",
        name = "Launch FastAPI",
        module = "uvicorn",
        args = { "app.main:app", "--port", "3003" },
        console = "integratedTerminal",
      },
    },
    cpp = {
      {
        name = "Launch C++",
        type = "cppdbg",
        request = "launch",
        program = function()
          return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        end,
        cwd = "${workspaceFolder}",
        setupCommands = {
          {
            description = "Enable pretty-printing",
            text = "-enable-pretty-printing",
          },
        },
      },
    },
    c = {
      {
        name = "Launch C",
        type = "cppdbg",
        request = "launch",
        program = function()
          return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        end,
        cwd = "${workspaceFolder}",
        setupCommands = {
          {
            description = "Enable pretty-printing",
            text = "-enable-pretty-printing",
          },
        },
      },
    },
    typescript = {
      {
        type = "node2",
        request = "launch",
        name = "Launch Node.js",
        program = "${file}",
        cwd = "${workspaceFolder}",
      },
    },
    javascript = {
      {
        type = "node2",
        request = "launch",
        name = "Launch Node.js",
        program = "${file}",
        cwd = "${workspaceFolder}",
      },
    },
  },
}

-- Debug Plugin Configuration
return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "jay-babu/mason-nvim-dap.nvim",
      "nvim-neotest/nvim-nio",
      "theHamsta/nvim-dap-virtual-text",
    },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      local dapvt = require("nvim-dap-virtual-text")

      -- Python adapter - use system debugpy if available, fallback to mason
      local python_cmd = vim.fn.exepath("python3") or "python"
      dap.adapters.python = {
        type = "executable",
        command = python_cmd,
        args = { "-m", "debugpy.adapter" },
      }

      -- C/C++ adapter
      dap.adapters.cppdbg = {
        type = "executable",
        command = "cppdbg",
        args = {},
      }

      -- Node.js adapter
      local js_debug_path = vim.fn.stdpath("data") .. "/mason/packages/js-debug-adapter/js-debug/srcDebug.js"
      if vim.fn.filereadable(js_debug_path) == 0 then
        js_debug_path = vim.fn.stdpath("data") .. "/mason/packages/node-debug2-adapter/out/nodeDebug.js"
      end

      dap.adapters.node2 = {
        type = "executable",
        command = "node",
        args = { js_debug_path },
      }

      -- Python configurations - use python3
      dap.configurations.python = {
        {
          type = "python",
          request = "launch",
          name = "Launch File",
          program = "${file}",
          python = python_cmd,
          console = "integratedTerminal",
        },
        {
          type = "python",
          request = "launch",
          name = "Launch Module",
          module = function()
            return vim.fn.input("Module name: ")
          end,
          python = python_cmd,
          console = "integratedTerminal",
        },
      }

      -- C++ configurations
      dap.configurations.cpp = {
        {
          name = "Launch C++",
          type = "cppdbg",
          request = "launch",
          program = function()
            return vim.fn.input("Executable: ", vim.fn.getcwd() .. "/", "file")
          end,
          cwd = "${workspaceFolder}",
          setupCommands = {
            { description = "Enable pretty-printing", text = "-enable-pretty-printing" },
          },
        },
      }

      -- C configurations
      dap.configurations.c = dap.configurations.cpp

      -- TypeScript/JavaScript configurations
      dap.configurations.typescript = {
        {
          type = "node2",
          request = "launch",
          name = "Launch Node.js",
          program = "${file}",
          cwd = "${workspaceFolder}",
        },
      }

      dap.configurations.javascript = dap.configurations.typescript

      -- Virtual text for variables
      dapvt.setup({
        enabled = true,
        highlight_changed_variables = true,
        show_stop_reason = true,
      })

      -- Keymaps
      local map = vim.keymap.set
      map("n", "<leader>db", dap.toggle_breakpoint, { desc = "Toggle Breakpoint" })
      map("n", "<leader>dc", dap.continue, { desc = "Start/Continue" })
      map("n", "<leader>di", dap.step_into, { desc = "Step Into" })
      map("n", "<leader>do", dap.step_over, { desc = "Step Over" })
      map("n", "<leader>dO", dap.step_out, { desc = "Step Out" })
      map("n", "<leader>dr", dap.repl.open, { desc = "Open REPL" })
      map("n", "<leader>dl", dap.run_last, { desc = "Run Last" })
      map("n", "<leader>du", dapui.toggle, { desc = "Toggle DAP UI" })
      map("n", "<leader>dx", dap.terminate, { desc = "Terminate" })

      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
    end,
  },
}

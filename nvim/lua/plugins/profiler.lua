-- Profiler Configuration
return {
  {
    "LazyVim/LazyVim",
    opts = function()
      local map = vim.keymap.set

      -- Python profiler (py-spy)
      map("n", "<leader>dpp", function()
        local ok, Terminal = pcall(require, "toggleterm.terminal")
        if not ok then
          vim.notify("toggleterm not installed", vim.log.levels.ERROR)
          return
        end

        local file = vim.fn.expand("%:p")
        local output = vim.fn.getcwd() .. "/profile.svg"
        local cmd = string.format("py-spy record -o %s -f svg -- python %s", output, vim.fn.shellescape(file))

        Terminal:new({
          cmd = cmd,
          direction = "float",
          float_opts = { border = "curved" },
          name = "py-spy Profiler",
          on_exit = function()
            vim.notify("Profile saved to " .. output, vim.log.levels.INFO)
          end,
        }):toggle()
      end, { desc = "Python: Start py-spy profiler" })

      -- C/C++ profiler (perf)
      map("n", "<leader>dpc", function()
        local ok, Terminal = pcall(require, "toggleterm.terminal")
        if not ok then
          vim.notify("toggleterm not installed", vim.log.levels.ERROR)
          return
        end

        local executable = vim.fn.input("Executable to profile: ", vim.fn.getcwd() .. "/", "file")
        if executable == "" then return end

        local output = vim.fn.getcwd() .. "/perf.data"
        local cmd = string.format("sudo perf record -g -o %s %s", vim.fn.shellescape(output), vim.fn.shellescape(executable))

        Terminal:new({
          cmd = cmd,
          direction = "float",
          float_opts = { border = "curved" },
          name = "perf Profiler",
          on_exit = function()
            vim.notify("Profile saved. Run :PerfReport to view", vim.log.levels.INFO)
          end,
        }):toggle()
      end, { desc = "C/C++: Start perf profiler" })

      -- Node.js profiler
      map("n", "<leader>dpn", function()
        local ok, Terminal = pcall(require, "toggleterm.terminal")
        if not ok then
          vim.notify("toggleterm not installed", vim.log.levels.ERROR)
          return
        end

        local file = vim.fn.expand("%:p")
        local cmd = "node --inspect-brk " .. vim.fn.shellescape(file)

        Terminal:new({
          cmd = cmd,
          direction = "float",
          float_opts = { border = "curved" },
          name = "Node Profiler",
          on_exit = function()
            vim.notify("Node profiler started. Open chrome://inspect", vim.log.levels.INFO)
          end,
        }):toggle()
      end, { desc = "Node.js: Start profiler" })
    end,
    event = "VimEnter",
  },
}

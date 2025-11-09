return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "jay-babu/mason-nvim-dap.nvim",
      "nvim-neotest/nvim-nio",
      "theHamsta/nvim-dap-virtual-text", -- 👈 add this line
    },
    config = function()
  local dap = require("dap")
  local dapui = require("dapui")
  local dapvt = require("nvim-dap-virtual-text")

  ------------------------------------------------------------------------
  -- 🎯 Keymaps
  ------------------------------------------------------------------------
  local map = vim.keymap.set

  map("n", "<leader>db", dap.toggle_breakpoint, { desc = "Toggle Breakpoint" })
  map("n", "<leader>dc", dap.continue, { desc = "Start/Continue" })
  map("n", "<leader>di", dap.step_into, { desc = "Step Into" })
  map("n", "<leader>do", dap.step_over, { desc = "Step Over" })
  map("n", "<leader>dO", dap.step_out, { desc = "Step Out" })
  map("n", "<leader>dr", dap.repl.open, { desc = "Open REPL" })
  map("n", "<leader>dl", dap.run_last, { desc = "Run Last" })
  map("n", "<leader>du", dapui.toggle, { desc = "Toggle DAP UI" })
  map("n", "<leader>dx", dap.terminate, { desc = "Terminate Debug Session" })
  ---
  ------------------------------------------------------------------------
  -- 🧩 Virtual text setup (inline variable hints)
  ------------------------------------------------------------------------
  dapvt.setup({
    enabled = true,
    enabled_commands = true,
    highlight_changed_variables = true,
    highlight_new_as_changed = true,
    show_stop_reason = true,
    commented = false,
    virt_text_pos = "eol", -- alternatives: 'eol' | 'right_align' | 'above'
    all_frames = false,
    all_references = false,
  })
  ------------------------------------------------------------------------
  -- 🧩 DAP UI setup
  ------------------------------------------------------------------------
  dapui.setup()

  dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
  end
  dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
  end
  -- dap.listeners.before.event_exited["dapui_config"] = function()
  --   dapui.close()
  -- end

  ------------------------------------------------------------------------
  -- 🔧 Per-language DAP setup
  ------------------------------------------------------------------------
  local langs = { "python", "cpp", "lua" }

  for _, lang in ipairs(langs) do
    local ok, mod = pcall(require, "languages." .. lang)
    if ok and type(mod.dap_setup) == "function" then
      mod.dap_setup() -- <-- direct function call (your pattern)
    elseif ok and type(mod.dap_setup) == "table" then
      for _, setup_fn in pairs(mod.dap_setup) do
        if type(setup_fn) == "function" then
          setup_fn(dap)
        end
      end
    end
  end
    end,
  },
}

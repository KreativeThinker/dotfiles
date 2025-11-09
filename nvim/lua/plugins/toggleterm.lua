return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    size = function(term)
      if term.direction == "horizontal" then
        return 15
      elseif term.direction == "vertical" then
        return vim.o.columns * 0.4
      end
    end,
    shade_terminals = true,
    hide_numbers = true,
    start_in_insert = true,
    persist_size = true,
    direction = "horizontal",
    close_on_exit = true,
    shell = vim.o.shell,
  },
  config = function(_, opts)
    require("toggleterm").setup(opts)

    local Terminal = require("toggleterm.terminal").Terminal

    -- Persistent terminals for toggling
    local float_term = Terminal:new({ direction = "float" })
    local horiz_term = Terminal:new({ direction = "horizontal" })
    local vert_term = Terminal:new({ direction = "vertical" })

    -- Keymaps (Normal + Terminal mode)
    local map = vim.keymap.set
    local modes = { "n", "t" }

    -- Float
    map(modes, "<A-i>", function()
      float_term:toggle()
    end, { desc = "Toggle Floating Terminal" })

    -- Horizontal
    map(modes, "<A-h>", function()
      horiz_term:toggle()
    end, { desc = "Toggle Horizontal Terminal" })

    -- Vertical
    map(modes, "<A-v>", function()
      vert_term:toggle()
    end, { desc = "Toggle Vertical Terminal" })

    -- New terminals
    map("n", "<leader>h", function()
      require("toggleterm.terminal").Terminal:new({ direction = "horizontal" }):toggle()
    end, { desc = "New Horizontal Terminal" })

    map("n", "<leader>v", function()
      require("toggleterm.terminal").Terminal:new({ direction = "vertical" }):toggle()
    end, { desc = "New Vertical Terminal" })
  end,
}

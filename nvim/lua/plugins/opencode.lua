local map = vim.keymap.set

return {
  "NickvanDyke/opencode.nvim",
  dependencies = {
    -- Recommended for `ask()` and `select()`.
    -- Required for `snacks` provider.
    ---@module 'snacks' <- Loads `snacks.nvim` types for configuration intellisense.
    { "folke/snacks.nvim", opts = { input = {}, picker = {}, terminal = {} } },
  },
  config = function()
    ---@type opencode.Opts
    vim.g.opencode_opts = {
      -- Your configuration, if any — see `lua/opencode/config.lua`, or "goto definition".
    }

    -- Required for `opts.events.reload`.
    vim.o.autoread = true

    -- Recommended/example keymaps.
    map({ "n", "x" }, "<leader>oa", function() require("opencode").ask("@this: ", { submit = true }) end, { desc = "Ask opencode" })
    map({ "n", "x" }, "<leader>op", function() require("opencode").select() end, { desc = "Execute opencode action…" })
    map({ "n", "x" }, "<leader>oga", function() require("opencode").prompt("@this") end, { desc = "Add to opencode" })
    map({ "n", "t" }, "<leader>ot", function() require("opencode").toggle() end, { desc = "Toggle opencode" })
    map("n", "<S-C-u>", function() require("opencode").command("session.half.page.up") end, { desc = "opencode half page up" })
    map("n", "<S-C-d>", function() require("opencode").command("session.half.page.down") end, { desc = "opencode half page down" }) -- You may want these if you stick with the opinionated "<C-a>" and "<C-x>" above — otherwise consider "<leader>o".
    map("n", "+", "<C-a>", { desc = "Increment", noremap = true }) map("n", "-", "<C-x>", { desc = "Decrement", noremap = true })
  end,
}

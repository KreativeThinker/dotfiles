return {
  "ibhagwan/fzf-lua",
  opts = function(_, opts)
  local fzf = require("fzf-lua")
  local map = vim.keymap.set

  -- FIND
  map("n", "<leader>ff", fzf.files, { desc = "Find files" })
  map("n", "<leader>fa", function()
    fzf.files({ hidden = true, no_ignore = true })
  end, { desc = "Find all (hidden + ignored)" })
  map("n", "<leader>fw", fzf.live_grep, { desc = "Live grep" })
  map("n", "<leader>fb", fzf.buffers, { desc = "Find buffers" })
  map("n", "<leader>fh", fzf.help_tags, { desc = "Help tags" })
  map("n", "<leader>fo", fzf.oldfiles, { desc = "Recent files" })
  map("n", "<leader>fz", fzf.blines, { desc = "Search current buffer" })

  -- GIT
  map("n", "<leader>cm", fzf.git_commits, { desc = "Git commits" })
  map("n", "<leader>gt", fzf.git_status, { desc = "Git status" })

  -- THEMES
  map("n", "<leader>th", fzf.colorschemes, { desc = "Colorschemes" })

  -- MARKS
  map("n", "<leader>ma", fzf.marks, { desc = "Marks" })

  return opts
  end,
}

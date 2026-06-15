return {
  "snrogers/mermaider.nvim",
  dependencies = {
    "3rd/image.nvim", -- Required for image display
  },
  config = function()
    require("mermaider").setup({
      -- Your config here (see Configuration section below)
    })
  end,
  ft = { "mmd", "mermaid" },
}

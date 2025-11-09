-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

if vim.g.neovide then
  vim.o.guifont = "JetBrainsMono Nerd Font:h7"
  -- vim.o.guifont = "JetBrainsMono Nerd Font:h9"
  -- vim.o.guifont = "JetBrainsMono Nerd Font:h15"
  -- vim.g.neovide_transparency = 0.6
  -- vim.g.neovide_cursor_trail_size = 0.7
  vim.g.neovide_refresh_rate = 60
  vim.g.neovide_scroll_animation_length = 0.2
  vim.g.neovide_floating_shadow = true
  vim.g.neovide_floating_z_height = 10
  -- vim.g.neovide_light_angle_degrees = 45
  vim.g.neovide_light_radius = 12
  vim.opt.conceallevel = 2
  local opt = vim.opt

  opt.foldmethod = "expr"
  opt.foldexpr = "nvim_treesitter#foldexpr()"
end

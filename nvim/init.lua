require "core"

local custom_init_path = vim.api.nvim_get_runtime_file("lua/custom/init.lua", false)[1]

if custom_init_path then
  dofile(custom_init_path)
end

require("core.utils").load_mappings()

local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

-- bootstrap lazy.nvim!
if not vim.loop.fs_stat(lazypath) then
  require("core.bootstrap").gen_chadrc_template()
  require("core.bootstrap").lazy(lazypath)
end

dofile(vim.g.base46_cache .. "defaults")
vim.opt.rtp:prepend(lazypath)

local nvim_config_path = vim.fn.stdpath "config"
local python_script = nvim_config_path .. "/pywal/chadwal.py"

os.execute("python3 " .. python_script .. " &> /dev/null &")
require "plugins"
os.execute "python ~/.config/nvim/pywal/chadwal.py &> /dev/null &"

local autocmd = vim.api.nvim_create_autocmd

autocmd("Signal", {
  pattern = "SIGUSR1",
  callback = function()
    -- require("nvchad.utils").reload()
    require("plenary.reload").reload_module "nvchad"
  end,
})

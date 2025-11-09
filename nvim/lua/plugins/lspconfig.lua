return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      -- Load language configs
      local python = require("languages.python")
      local cpp = require("languages.cpp")
      local markdown = require("languages.markdown")
      -- local frontend = require("languages.frontend")
      local lua_lang = require("languages.lua")

      -- Merge servers from all languages
      opts.servers =
        vim.tbl_deep_extend("force", opts.servers or {}, python.lsp or {}, cpp.lsp or {}, lua_lang.lsp or {}, markdown.lsp or {}) --, frontend.lsp or {})

      -- Merge custom setup functions
      opts.setup = opts.setup or {}

      -- Add Python custom setups
      if python.lsp_setup then
        for server, setup_fn in pairs(python.lsp_setup) do
          opts.setup[server] = setup_fn
        end
      end

      if cpp.lsp_setup then
        for server, setup_fn in pairs(cpp.lsp_setup) do
          opts.setup[server] = setup_fn
        end
      end

      if markdown.lsp_setup then
        for server, setup_fn in pairs(markdown.lsp_setup) do
          opts.setup[server] = setup_fn
        end
      end

      -- -- Add Frontend custom setups (if any)
      -- if frontend.lsp_setup then
      --   for server, setup_fn in pairs(frontend.lsp_setup) do
      --     opts.setup[server] = setup_fn
      --   end
      -- end
      --
      -- Add Lua custom setups (if any)
      if lua_lang.lsp_setup then
        for server, setup_fn in pairs(lua_lang.lsp_setup) do
          opts.setup[server] = setup_fn
        end
      end

      return opts
    end,
  },
}

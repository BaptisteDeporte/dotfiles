return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")
    lspconfig.lua_ls.setup({})
    lspconfig.tsserver.setup({})

    vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
    vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
  end,
  setup = function()
    require("lazyvim.util").lsp.on_attach(function(client)
      -- disable tsserver formatting to use prettier
      if client.name == "tsserver" then
        client.server_capabilities.documentFormattingProvider = false
      end
    end)
  end,
}

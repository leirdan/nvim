return {
  {
    "williamboman/mason.nvim",
    config = function()
      require('mason').setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require('mason-lspconfig').setup({
        ensure_installed = { "clangd", "jdtls", "ltex", "tailwindcss", "tsserver", "lua_ls" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.jdtls.setup({})
      lspconfig.clangd.setup({})
      lspconfig.ltex.setup({})
      lspconfig.tsserver.setup({})
      vim.keymap.set('n', '<C-h>', vim.lsp.buf.hover, {})
      vim.keymap.set('n', '<C-c>', vim.lsp.buf.code_action, {})
      vim.keymap.set('n', '<C-d>', vim.lsp.buf.definition, {})
    end
  }
}

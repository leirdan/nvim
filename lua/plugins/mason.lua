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
        ensure_installed = { "asm_lsp", "clangd", "ltex", "tailwindcss", "tsserver", "lua_ls" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.asm_lsp.setup({})
      lspconfig.clangd.setup({})
      lspconfig.ltex.setup({})
      lspconfig.tsserver.setup({})
      vim.keymap.set('n', '<C-i>', vim.lsp.buf.hover, {})
      vim.keymap.set('n', '<C-c>', vim.lsp.buf.code_action, {})
      vim.keymap.set('n', '<C-d>', vim.lsp.buf.definition, {})
    end
  }
}

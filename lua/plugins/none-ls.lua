return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.completion.luasnip,
        null_ls.builtins.diagnostics.cppcheck,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.completion.spell,
        null_ls.builtins.diagnostics.trivy,
        null_ls.builtins.formatting.sql_formatter,
      },
    })
    vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})
  end,
}

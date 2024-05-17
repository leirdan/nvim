return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {},
  config = function()
    require("toggleterm").setup{
      shade_terminals = true,
      persist_mode = true,
      direction = 'float'
    }
    vim.keymap.set("n", "<C-t>", ":ToggleTerm<CR>", {})
  end,
}

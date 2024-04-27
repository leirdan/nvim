return { 
  'nvim-treesitter/nvim-treesitter', 
  build = ':TSUpdate', 
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {"javascript", "c", "cpp", "lua"},
      highlight = { enable = true },
      indent = { enable = true }
    })
  end
}

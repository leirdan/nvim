return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  config = function(plugin)
    vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
    vim.o.background = "light"
    vim.cmd("colorscheme gruvbox")
  end,
}
--[[ "baliestri/aura-theme",
  lazy = false,
  priority = 1000,
  config = function(plugin)
    vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
    vim.cmd([[colorscheme aura-dark]]
--]]

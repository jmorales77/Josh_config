--NORD 
return {
  "shaunsingh/nord.nvim",
  opts = {},
  config = function()
    require("nord")
    vim.cmd [[colorscheme nord]]
  end,
}

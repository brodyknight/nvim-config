return {
  "echasnovski/mini.nvim",
  version = false,
  event = "VeryLazy",
  config = function()
      require('mini.icons').setup({})
      require('mini.clue').setup({})
  end,
}

return {
  "echasnovski/mini.nvim",
  version = false,
  config = function()
      require('mini.icons').setup({})
      require('mini.clue').setup({})
      require('mini.comment').setup({})
  end,
}
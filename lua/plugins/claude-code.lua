return {
  "greggh/claude-code.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim", -- Required for git operations
  },
  lazy = true,
  event = "VeryLazy",
  config = function()
    require("claude-code").setup()
  end
}

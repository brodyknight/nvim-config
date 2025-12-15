return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    spec = {
      { "<leader>f", group = "Find" },
      { "<leader>g", group = "Git" },
      { "<leader>c", group = "Code" },
      { "<leader>x", group = "Diagnostics" },
      { "<leader>t", group = "Toggle" },
      { "<leader>m", group = "Marks" },
      { "<leader>p", group = "Pick" },
    },
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}

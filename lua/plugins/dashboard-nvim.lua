return {
  "nvimdev/dashboard-nvim",
  dependencies = { { "nvim-tree/nvim-web-devicons" } },
  event = "VimEnter",
  opts = {
    theme = "hyper",
    config = {
      week_header = {
        enable = true
      },
      packages = { enable = true },
    }
  }
}

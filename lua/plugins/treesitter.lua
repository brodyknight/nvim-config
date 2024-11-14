return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = { "lua", "terraform", "hcl", "ninja", "rst" },

    highlight = {
      enable = true,
      use_languagetree = true
    },

    indent = { enable = true },
  }
}

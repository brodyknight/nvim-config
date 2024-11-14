return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = { "lua", "terraform", "hcl", "markdown", "markdown_inline" },

    highlight = {
      enable = true,
      use_languagetree = true
    },

    indent = { enable = true },
  }
}

return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  cmd = {
    "TSInstall",
    "TSBufEnable",
    "TSBufDisable",
    "TSModuleInfo"
  },
  opts = {
    ensure_installed = { "lua", "terraform", "hcl", "markdown", "markdown_inline", "go" },
    sync_install = false, -- synchronous installations
    auto_install = true,

    highlight = {
      enable = true,
      use_languagetree = true
    },

    indent = { enable = true },
  }
}

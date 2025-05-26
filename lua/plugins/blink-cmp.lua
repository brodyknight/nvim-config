return {
  "saghen/blink.cmp",
  dependencies = { 
    "rafamadriz/friendly-snippets",
    "fang2hou/blink-copilot",
  },
  version = "v0.*",
  event = { "InsertEnter" },
  opts = {
    keymap = {
      ["<C-p>"] = { "select_prev", "fallback" },
      ["<C-n>"] = { "select_next", "fallback" },
      ["<C-y>"] = { "accept", "fallback" },
      ["<C-Space>"] = { "show", "show_documentation", "hide_documentation" },
      ["<CR>"] = { "fallback" },
      ["<C-e>"] = { "hide", "fallback" },
      ["<C-b>"] = { "scroll_documentation_up", "fallback" },
      ["<C-f>"] = { "scroll_documentation_down", "fallback" },
    },
    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = "mono",
    },
    sources = {
      default = { "copilot", "lsp", "path", "snippets", "buffer" },
      providers = {
        copilot = {
          name = "copilot",
          module = "blink-copilot",
          score_offset = 100,
          async = true,
        },
        lsp = {
          name = "LSP",
          enabled = true,
          module = "blink.cmp.sources.lsp",
          score_offset = 90,
        },
        path = {
          name = "Path",
          enabled = true,
          module = "blink.cmp.sources.path",
          score_offset = 3,
        },
        snippets = {
          name = "Snippets",
          enabled = true,
          module = "blink.cmp.sources.snippets",
          score_offset = 80,
        },
        buffer = {
          name = "Buffer",
          enabled = true,
          module = "blink.cmp.sources.buffer",
          score_offset = -3,
        },
      },
    },
    completion = {
      accept = {
        auto_brackets = {
          enabled = true,
        },
      },
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 100,
      },
    },
  },
  opts_extend = { "sources.default" },
}